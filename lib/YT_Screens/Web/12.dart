import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/YT_Screens/youtube_model.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo12 extends StatefulWidget {
  YoutubePlayerDemo12({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo12State createState() => _YoutubePlayerDemo12State();
}

class _YoutubePlayerDemo12State extends State<YoutubePlayerDemo12> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'PlbupGCBV6w'),
    YoutubeModel(id: 2, youtubeId: 'POPLF-Qc0OU'),
    YoutubeModel(id: 3, youtubeId: 'BxZKLKfjaRg'),
    YoutubeModel(id: 4, youtubeId: 'TOkU5HxES1o'),
    YoutubeModel(id: 5, youtubeId: 'Wsy7nhFnfbM'),
    YoutubeModel(id: 6, youtubeId: 'nCwQY8inRvU'),
    YoutubeModel(id: 7, youtubeId: '4GXpB9EMLWM'),
    YoutubeModel(id: 8, youtubeId: '4MsfBokJiSs'),
    YoutubeModel(id: 9, youtubeId: 'wFiVtqe1osM'),
    YoutubeModel(id: 10, youtubeId: 'otYwi_wW9Hk'),
    YoutubeModel(id: 11, youtubeId: 'gG0ynX_Sfx4'),
    YoutubeModel(id: 12, youtubeId: 'uuRJ1aCj8Ro'),
    YoutubeModel(id: 13, youtubeId: 'o_iO9WuoWaM'),
    YoutubeModel(id: 14, youtubeId: 'VBCOx4CqBz0'),
    YoutubeModel(id: 15, youtubeId: 'SJPsOFfvEQA'),
    YoutubeModel(id: 16, youtubeId: 'K4Kh5gw4PRE'),
    YoutubeModel(id: 17, youtubeId: 'h84MlHv6g4Q'),
    YoutubeModel(id: 18, youtubeId: 'jcwTB9fBzP0'),
    YoutubeModel(id: 19, youtubeId: 'EBHOo-6xn4A'),
    YoutubeModel(id: 20, youtubeId: 'S1dWe3f2zm0'),
    YoutubeModel(id: 21, youtubeId: 'weEDSjNYzv4'),
    YoutubeModel(id: 22, youtubeId: '-PVcUUj_ke4'),
    YoutubeModel(id: 23, youtubeId: 'jwOW-qlJtxg'),
    YoutubeModel(id: 24, youtubeId: 'pCU7vicLCgA'),
    YoutubeModel(id: 25, youtubeId: '37ly8tCGFWA'),
    YoutubeModel(id: 26, youtubeId: 'nnAU1dLY7gY'),
    YoutubeModel(id: 27, youtubeId: 'tJOJPealurs'),
    YoutubeModel(id: 28, youtubeId: '4r72b1ScPLY'),
    YoutubeModel(id: 29, youtubeId: 'kE93zNJBCBw'),
    YoutubeModel(id: 30, youtubeId: 'YiqqAAvb16Q'),
    YoutubeModel(id: 31, youtubeId: 'tV7ZqcB9J3Y'),
    YoutubeModel(id: 32, youtubeId: 'TScHu-37Cqw'),
    YoutubeModel(id: 33, youtubeId: 'eADCg1R5_sk'),
    YoutubeModel(id: 34, youtubeId: 'Yv1h-QKt_KQ'),
    YoutubeModel(id: 35, youtubeId: 'c69Y2GpF6-U'),
    YoutubeModel(id: 36, youtubeId: 'giNjEgYTd9E'),
    YoutubeModel(id: 37, youtubeId: 'hP0Rl5euD_o'),
    YoutubeModel(id: 38, youtubeId: 'oQ7Le6SuLNA'),
    YoutubeModel(id: 39, youtubeId: 'YiIKUhtqeRM'),
    YoutubeModel(id: 40, youtubeId: 'flveJ5_-iFA'),
    YoutubeModel(id: 41, youtubeId: '8NZZSgtTelc'),
    YoutubeModel(id: 42, youtubeId: 'rDjSD1vcsRI'),
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
    return Scaffold(  backgroundColor: Colors.black,
      appBar: AppBar(  backgroundColor: Colors.deepPurple,iconTheme: IconThemeData( color: Colors.black,),
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
