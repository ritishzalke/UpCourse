import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/YT_Screens/youtube_model.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo19 extends StatefulWidget {
  YoutubePlayerDemo19({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo19State createState() => _YoutubePlayerDemo19State();
}

class _YoutubePlayerDemo19State extends State<YoutubePlayerDemo19> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: '0IAPZzGSbME'),
    YoutubeModel(id: 2, youtubeId: '-JTq1BFBwmo'),
    YoutubeModel(id: 3, youtubeId: 'FbYzBWdhMb0'),
    YoutubeModel(id: 4, youtubeId: 'xGYsEqe9Vl0'),
    YoutubeModel(id: 5, youtubeId: '1U3Uwct45IY'),
    YoutubeModel(id: 6, youtubeId: '9TlHvipP5yA'),
    YoutubeModel(id: 7, youtubeId: '9SgLBjXqwd4'),
    YoutubeModel(id: 8, youtubeId: 'p1EnSvS3urU'),
    YoutubeModel(id: 9, youtubeId: 'w7t4_JUUTeg'),
    YoutubeModel(id: 10, youtubeId: '5v-tKX2uRAk'),
    YoutubeModel(id: 11, youtubeId: 'A03oI0znAoc'),
    YoutubeModel(id: 12, youtubeId: 'Nd0XDY-jVHs'),
    YoutubeModel(id: 13, youtubeId: 'NI4OKSvGAgM'),
    YoutubeModel(id: 14, youtubeId: 'mwN18xfwNhk'),
    YoutubeModel(id: 15, youtubeId: 'WlBBTSL0ZRc'),
    YoutubeModel(id: 16, youtubeId: 'lj3E24nnPjI'),
    YoutubeModel(id: 17, youtubeId: 'wU6udHRIkcc'),
    YoutubeModel(id: 18, youtubeId: '2Rr2tW9zvRg'),
    YoutubeModel(id: 19, youtubeId: '4V30R3I1vLI'),
    YoutubeModel(id: 20, youtubeId: 'IawM82BQ4II'),
    YoutubeModel(id: 21, youtubeId: 'MhT7XmxhaCE'),
    YoutubeModel(id: 22, youtubeId: 'JvcqtZk2mng'),
    YoutubeModel(id: 23, youtubeId: 'CyknhZbfMqc'),
    YoutubeModel(id: 24, youtubeId: '8gt0D0IqU5w'),
    YoutubeModel(id: 25, youtubeId: 'XcZw01FuH18'),
    YoutubeModel(id: 26, youtubeId: '1K9ebQJosvo'),
    YoutubeModel(id: 27, youtubeId: 'OynWkEj0S-s'),
    YoutubeModel(id: 28, youtubeId: 'kGcO-nAm9Vc'),
    YoutubeModel(id: 29, youtubeId: '9rVuyjxzwgM'),
    YoutubeModel(id: 30, youtubeId: 'C2apEw9pgtw'),
    YoutubeModel(id: 31, youtubeId: 'uEUXGcc2VXM'),
    YoutubeModel(id: 32, youtubeId: 'HqPJF2L5h9U'),
    YoutubeModel(id: 33, youtubeId: '6pV2IF0fgKY'),
    YoutubeModel(id: 34, youtubeId: 'mB5HXBb_HY8'),
    YoutubeModel(id: 35, youtubeId: 'ak-pz7tS5DE'),
    YoutubeModel(id: 36, youtubeId: '7h1s2SojIRw'),
    YoutubeModel(id: 37, youtubeId: '-qOVVRIZzao'),
    YoutubeModel(id: 38, youtubeId: '0oJyNmEbS4w'),
    YoutubeModel(id: 39, youtubeId: 'ARvQcqJ_-NY'),
    YoutubeModel(id: 40, youtubeId: 'oTTzNMHM05I'),
    YoutubeModel(id: 41, youtubeId: 'zPtI8q9gvX8'),
    YoutubeModel(id: 42, youtubeId: 'HHIc5JZyenI'),
    YoutubeModel(id: 43, youtubeId: 'co4_ahEDCho'),
    YoutubeModel(id: 44, youtubeId: '4ZlRH0eK-qQ'),
    YoutubeModel(id: 45, youtubeId: 'XB4MIexjvY0'),
    YoutubeModel(id: 46, youtubeId: '5dRGRueKU3M'),
    YoutubeModel(id: 47, youtubeId: '9iE9Mj4m8jk'),
    YoutubeModel(id: 48, youtubeId: 'FcScLYJI42E'),
    YoutubeModel(id: 49, youtubeId: 'oNI0rf2P9gE'),
    YoutubeModel(id: 50, youtubeId: 'prx1psByp7U'),
    YoutubeModel(id: 51, youtubeId: '_WncuhSJZyA'),
    YoutubeModel(id: 52, youtubeId: 'eKkXU3uu2zk'),
    YoutubeModel(id: 53, youtubeId: 'FtN3BYH2Zes'),
    YoutubeModel(id: 54, youtubeId: 'nLmhmB6NzcM'),
    YoutubeModel(id: 55, youtubeId: 'zRza99HPvkQ'),
    YoutubeModel(id: 56, youtubeId: 'vLS-zRCHo-Y'),
    YoutubeModel(id: 57, youtubeId: 'wAy6nDMPYAE'),
    YoutubeModel(id: 58, youtubeId: 'Q4zHb-Swzro'),
    YoutubeModel(id: 59, youtubeId: 'uJOmqBwENB8'),
    YoutubeModel(id: 60, youtubeId: 'sSno9rV8Rhg'),
    YoutubeModel(id: 61, youtubeId: 'pcKY4hjDrxk'),
    YoutubeModel(id: 62, youtubeId: 'jFZsDDB0-vo'),
    YoutubeModel(id: 63, youtubeId: 'DKCbsiDBN6c'),
    YoutubeModel(id: 64, youtubeId: 'xFv_Hl4B83A'),
    YoutubeModel(id: 65, youtubeId: 'kyLxTdsT8ws'),
    YoutubeModel(id: 66, youtubeId: '052VkKhIaQ4'),
    YoutubeModel(id: 67, youtubeId: 'dQr4wZCiJJ4'),
    YoutubeModel(id: 68, youtubeId: '3RBNPc0_Q6g'),
    YoutubeModel(id: 69, youtubeId: 'M7Fl_z7_J2k'),
    YoutubeModel(id: 70, youtubeId: 'yV1d-b_NeK8'),
    YoutubeModel(id: 71, youtubeId: '1FEP_sNb62k'),
    YoutubeModel(id: 72, youtubeId: 'e2cF8a5aAhE'),
    YoutubeModel(id: 73, youtubeId: 'qZs767KQcvE'),
    YoutubeModel(id: 74, youtubeId: 'V5-7GzOfADQ'),
    YoutubeModel(id: 75, youtubeId: 'qQ8vS2btsxI'),
    YoutubeModel(id: 76, youtubeId: 'jDM6_TnYIqE'),
    YoutubeModel(id: 77, youtubeId: 'aZjYr87r1b8'),
    // YoutubeModel(id: 44, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 45, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 46, youtubeId: 'o3Gfsc6kihk'),
    //
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
    // YoutubeModel(id: 40, youtubeId: 'kflveJ5_-iFA'),
    // YoutubeModel(id: 41, youtubeId: '8NZZSgtTelc'),
    // YoutubeModel(id: 42, youtubeId: 'rDjSD1vcsRI'),
    // YoutubeModel(id: 43, youtubeId: '9CY0V0JAgNU'),
    // YoutubeModel(id: 44, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 45, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 46, youtubeId: 'o3Gfsc6kihk'),



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
      appBar: AppBar(backgroundColor: Colors.deepPurple,iconTheme: IconThemeData( color: Colors.black,),
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
