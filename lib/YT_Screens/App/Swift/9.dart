import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo9 extends StatefulWidget {
  YoutubePlayerDemo9({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo9State createState() => _YoutubePlayerDemo9State();
}

class _YoutubePlayerDemo9State extends State<YoutubePlayerDemo9> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'F2ojC6TNwws'),
    YoutubeModel(id: 2, youtubeId: 'R017vWz7FOY'),
    YoutubeModel(id: 3, youtubeId: 'rmTQcILJRcY'),
    YoutubeModel(id: 4, youtubeId: 'MJP60XnN4us'),
    YoutubeModel(id: 5, youtubeId: 'wQLOWv8l7yI'),
    YoutubeModel(id: 6, youtubeId: 'HjX4cAcvAWc'),
    YoutubeModel(id: 7, youtubeId: '51Z9Kun7tFo'),
    YoutubeModel(id: 8, youtubeId: 'NKRJmWKB_Z8'),
    YoutubeModel(id: 9, youtubeId: 'aLSzgZtOpG8'),
    YoutubeModel(id: 10, youtubeId: 'IIDiqgdn2yo'),
    YoutubeModel(id: 11, youtubeId: 'wbFuAs_UNYg'),
    YoutubeModel(id: 12, youtubeId: '6PO0k8GlxWA'),
    YoutubeModel(id: 13, youtubeId: 'lIxq4TCdlRU'),
    YoutubeModel(id: 14, youtubeId: 'LME6cZ-2Vuc'),
    YoutubeModel(id: 15, youtubeId: 'K00oSg1gm_0'),
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
