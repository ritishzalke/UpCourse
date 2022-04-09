import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo6 extends StatefulWidget {
  YoutubePlayerDemo6({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo6State createState() => _YoutubePlayerDemo6State();
}

class _YoutubePlayerDemo6State extends State<YoutubePlayerDemo6> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'e7WIPwRd2s8'),
    YoutubeModel(id: 2, youtubeId: 'CsxpHOQKk8c'),
    YoutubeModel(id: 3, youtubeId: 'k4AfStT5dk8'),
    YoutubeModel(id: 4, youtubeId: 'rKnx_zdPyzM'),
    YoutubeModel(id: 5, youtubeId: 'JCXYtOtRRSs'),
    YoutubeModel(id: 6, youtubeId: 'Y6JJ4qZhhAI'),
    YoutubeModel(id: 7, youtubeId: 'RpHXPIm9j6s'),
    YoutubeModel(id: 8, youtubeId: 'fcGZAZ30XNk'),
    YoutubeModel(id: 9, youtubeId: 'zYrncPzx2tE'),
    YoutubeModel(id: 10, youtubeId: 'rLTrM7Lgq4s'),
    YoutubeModel(id: 11, youtubeId: 'CC79Qz6n22c'),
    YoutubeModel(id: 12, youtubeId: 'lLQWJS-WPo4'),
    YoutubeModel(id: 13, youtubeId: 'iepWnIHP7t8'),
    YoutubeModel(id: 14, youtubeId: 'bfPBa8cLqqg'),
    YoutubeModel(id: 15, youtubeId: 'E3x6pCZutLA'),
    YoutubeModel(id: 16, youtubeId: 'HXz6618Zzn8'),
    YoutubeModel(id: 17, youtubeId: '2C_OmcDorJI'),
    YoutubeModel(id: 18, youtubeId: 'K1u8S2e41LA'),
    YoutubeModel(id: 19, youtubeId: 'BRqfjvEVuuc'),
    YoutubeModel(id: 20, youtubeId: '7JqvW898M1w'),
    YoutubeModel(id: 21, youtubeId: 'buhk5TRX_rw'),
    YoutubeModel(id: 22, youtubeId: 'XNFz97zqN-E'),
    YoutubeModel(id: 23, youtubeId: '6wPa8nQOKi4'),
    YoutubeModel(id: 24, youtubeId: 'DGk3ELTSA-g'),
    YoutubeModel(id: 25, youtubeId: 'oShPHVG3c9o'),
    YoutubeModel(id: 26, youtubeId: 'N4LjIy86J2Q'),
    YoutubeModel(id: 27, youtubeId: 'nSBUPuxctzA'),
    YoutubeModel(id: 28, youtubeId: 'JG0GJ7k7Tlk'),
    YoutubeModel(id: 29, youtubeId: '_g4EfLq5ACI'),


  ];

  @override
  void initState() {
    super.initState();

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: videosList[0].youtubeId,
          params: YoutubePlayerParams(
            showFullscreenButton: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Column(
          children: [
            _buildYtbView(),
            _buildMoreVideoTitle(),
            _buildMoreVideosView(),
          ],
        ),
      ),
    );
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _ytbPlayerController != null
          ? YoutubePlayerIFrame(controller: _ytbPlayerController)
          : Center(child: CircularProgressIndicator()),
    );
  }

  _buildMoreVideoTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "More videos",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildMoreVideosView() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: videosList.length,
            physics: AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final _newCode = videosList[index].youtubeId;
                  _ytbPlayerController.load(_newCode);
                  _ytbPlayerController.stop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  margin: EdgeInsets.symmetric(vertical: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          child: CachedNetworkImage(
                            imageUrl:
                            "https://img.youtube.com/vi/${videosList[index].youtubeId}/0.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/ytbPlayBotton.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
