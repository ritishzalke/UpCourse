import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/YT_Screens/youtube_model.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo1 extends StatefulWidget {
  YoutubePlayerDemo1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo1State createState() => _YoutubePlayerDemo1State();
}

class _YoutubePlayerDemo1State extends State<YoutubePlayerDemo1> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: '4AoFA19gbLo'),
    YoutubeModel(id: 2, youtubeId: 'xWV71C2kp38'),
    YoutubeModel(id: 3, youtubeId: 'Z6KZ3cTGBWw'),
    YoutubeModel(id: 4, youtubeId: 'QlwiL_yLh6E'),
    YoutubeModel(id: 5, youtubeId: 'YY-_yrZdjGc'),
    YoutubeModel(id: 6, youtubeId: 'QIW35-vcA2o'),
    YoutubeModel(id: 7, youtubeId: 'cyFM2emjbQ8'),
    YoutubeModel(id: 8, youtubeId: 'sgPQklGe2K8'),
    YoutubeModel(id: 9, youtubeId: 'rIaaH87z1-g'),
    YoutubeModel(id: 10, youtubeId: 'iYhOU9AuaFs'),
    YoutubeModel(id: 11, youtubeId: 'b_sQ9bMltGU'),
    YoutubeModel(id: 12, youtubeId: '996ZgFRENMs'),
    YoutubeModel(id: 13, youtubeId: '5j82wxzwFyI'),
    YoutubeModel(id: 14, youtubeId: 'CkcvVZZEsJE'),
    // YoutubeModel(id: 5, youtubeId: 'YY-_yrZdjGc'),
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
