import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/YT_Screens/youtube_model.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo23 extends StatefulWidget {
  YoutubePlayerDemo23({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo23State createState() => _YoutubePlayerDemo23State();
}

class _YoutubePlayerDemo23State extends State<YoutubePlayerDemo23> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'gQmiqmxJMtA'),
    YoutubeModel(id: 2, youtubeId: 'QJpfLkEsoek'),
    YoutubeModel(id: 3, youtubeId: 'jKuHiDyLZfw'),
    YoutubeModel(id: 4, youtubeId: 'bvcBBa3X4js'),
    YoutubeModel(id: 5, youtubeId: 'qnPOdaWUxJI'),
    YoutubeModel(id: 6, youtubeId: 'UVTzVtxxgE0'),
    YoutubeModel(id: 7, youtubeId: 'yw9y5PfELos'),
    YoutubeModel(id: 8, youtubeId: 'BI--1FwJo6E'),
    YoutubeModel(id: 9, youtubeId: 'ovMk4G3se1M'),
    YoutubeModel(id: 10, youtubeId: 'bY6Nl-OEhSo'),
    YoutubeModel(id: 11, youtubeId: '5jHhIah8H7U'),
    YoutubeModel(id: 12, youtubeId: '-j-EBMmPZrs'),
    YoutubeModel(id: 13, youtubeId: 'uleiEmLNyy8'),
    YoutubeModel(id: 14, youtubeId: 's7PVCWOQaII'),
    YoutubeModel(id: 15, youtubeId: 'FzoY062kY1s'),
    YoutubeModel(id: 16, youtubeId: 'jjyl4phsvBY'),
    YoutubeModel(id: 17, youtubeId: 'kg81qSSL7TQ'),
    YoutubeModel(id: 18, youtubeId: 'FKM4iFQJlA4'),
    YoutubeModel(id: 19, youtubeId: 'nY4Q8cYBLP8'),
    YoutubeModel(id: 20, youtubeId: '0L7fkhQYg68'),
    // YoutubeModel(id: 21, youtubeId: 'IZaLM8kYtFU'),
    // YoutubeModel(id: 22, youtubeId: 'EmUa_tcSM-k'),
    // YoutubeModel(id: 23, youtubeId: 'DO-pSysGItQ'),
    // YoutubeModel(id: 24, youtubeId: 'aKOQtGLT-Yk'),
    // YoutubeModel(id: 25, youtubeId: 't7VmF4WsLCo'),
    // YoutubeModel(id: 26, youtubeId: 'c-5VXl8yPQA'),
    // YoutubeModel(id: 27, youtubeId: 'IkMND33x0qQ'),
    // YoutubeModel(id: 28, youtubeId: 'pJiRj02PkJQ'),
    // YoutubeModel(id: 29, youtubeId: 'EcRFYF4B3IQ'),
    // YoutubeModel(id: 30, youtubeId: 'TmVqwhBUiSM'),
    // YoutubeModel(id: 31, youtubeId: 'Wb-0CkLiyQk'),
    // YoutubeModel(id: 32, youtubeId: 'XW0t2lk4Ffo'),
    // YoutubeModel(id: 33, youtubeId: 'eADCg1R5_sk'),
    // YoutubeModel(id: 34, youtubeId: 'Yv1h-QKt_KQ'),
    // YoutubeModel(id: 35, youtubeId: 'c69Y2GpF6-U'),
    // YoutubeModel(id: 36, youtubeId: 'giNjEgYTd9E'),
    // YoutubeModel(id: 37, youtubeId: 'hP0Rl5euD_o'),
    // YoutubeModel(id: 38, youtubeId: 'oQ7Le6SuLNA'),
    // YoutubeModel(id: 39, youtubeId: 'YiIKUhtqeRM'),
    // YoutubeModel(id: 40, youtubeId: 'flveJ5_-iFA'),
    // YoutubeModel(id: 41, youtubeId: '8NZZSgtTelc'),
    // YoutubeModel(id: 42, youtubeId: 'rDjSD1vcsRI'),
    // YoutubeModel(id: 43, youtubeId: '9CY0V0JAgNU'),
    // YoutubeModel(id: 28, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 28, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 28, youtubeId: 'o3Gfsc6kihk'),



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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,iconTheme: IconThemeData( color: Colors.black,),
        title: Text(widget.title,style: TextStyle(color: Colors.black),),
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
                            fit: BoxFit.fill,
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
