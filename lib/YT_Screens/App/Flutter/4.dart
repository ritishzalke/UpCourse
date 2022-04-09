import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo4 extends StatefulWidget {
  YoutubePlayerDemo4({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo4State createState() => _YoutubePlayerDemo4State();
}

class _YoutubePlayerDemo4State extends State<YoutubePlayerDemo4> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'sfA3NWDBPZ4'),
    YoutubeModel(id: 2, youtubeId: 'Wa0rdbb53I8'),
    YoutubeModel(id: 3, youtubeId: 'z05m8nlPRxk'),
    YoutubeModel(id: 4, youtubeId: 'mZYuuGAIwe4'),
    YoutubeModel(id: 5, youtubeId: 'LBJoY4VjECo'),
    YoutubeModel(id: 6, youtubeId: 'PS0b2gJ04Bs'),
    YoutubeModel(id: 7, youtubeId: 'LkpPEYuqbIY'),
    YoutubeModel(id: 8, youtubeId: 'j_SJ7XmT2MM'),
    YoutubeModel(id: 9, youtubeId: 'v3sY3RWciNw'),
    YoutubeModel(id: 10, youtubeId: '_SHssHJJhAI'),
    YoutubeModel(id: 11, youtubeId: 'E-DRnRUXcBY'),
    YoutubeModel(id: 12, youtubeId: 'jl5E0UfAGVs'),
    YoutubeModel(id: 13, youtubeId: 'Jy82t4IKJSQ'),
    YoutubeModel(id: 14, youtubeId: 'sCPS5_ZpJe0'),
    YoutubeModel(id: 15, youtubeId: 'Vr_ahm78h_g'),
    YoutubeModel(id: 16, youtubeId: 'mtNA1neFNVo'),
    YoutubeModel(id: 17, youtubeId: 'EA7973HI93E'),
    YoutubeModel(id: 18, youtubeId: '10PcEkQsF9Y'),
    YoutubeModel(id: 19, youtubeId: 'ggYTQn4WVuw'),
    YoutubeModel(id: 20, youtubeId: 'TKM6_MTNGsI'),
    YoutubeModel(id: 21, youtubeId: '4QpzUDc-c7A'),
    YoutubeModel(id: 22, youtubeId: 'hyJ82FH3D5U'),
    YoutubeModel(id: 23, youtubeId: '9gWYe8xCD5I'),
    YoutubeModel(id: 24, youtubeId: 'eelKWYwUm5w'),
    YoutubeModel(id: 25, youtubeId: 'PT3v28eyOqg'),
    YoutubeModel(id: 26, youtubeId: '7q22Ydtzoeg'),
    YoutubeModel(id: 27, youtubeId: '9U1OS_ZNJ5M'),
    YoutubeModel(id: 28, youtubeId: 'VgvhVRQ_6lQ'),



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
