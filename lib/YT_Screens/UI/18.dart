import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo18 extends StatefulWidget {
  YoutubePlayerDemo18({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo18State createState() => _YoutubePlayerDemo18State();
}

class _YoutubePlayerDemo18State extends State<YoutubePlayerDemo18> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'qDUYIQZVQDE'),
    YoutubeModel(id: 2, youtubeId: 'nG1ztgEJeXM'),
    YoutubeModel(id: 3, youtubeId: 'LhyS25uv5eo'),
    YoutubeModel(id: 4, youtubeId: 'ggZSE-JHgbg'),
    YoutubeModel(id: 5, youtubeId: '4SoSkcgf-xI'),
    YoutubeModel(id: 6, youtubeId: 'kwsG0_EU0Cs'),
    YoutubeModel(id: 7, youtubeId: 'SAwIw5hFSgM'),
    YoutubeModel(id: 8, youtubeId: 'LLISJKXKBNw'),
    YoutubeModel(id: 9, youtubeId: 'BRt0v9D4A7M'),
    YoutubeModel(id: 10, youtubeId: 'OKu0Sbk68k0'),
    YoutubeModel(id: 11, youtubeId: 'flT-7NUf7Z4'),
    YoutubeModel(id: 12, youtubeId: 'lnLrlJY6RYc'),
    YoutubeModel(id: 13, youtubeId: '-l3DE1jaXq8'),
    YoutubeModel(id: 14, youtubeId: 'WZv_sEUhWjc'),
    YoutubeModel(id: 15, youtubeId: 'Rc7wXNqD174'),
    YoutubeModel(id: 16, youtubeId: 'dto3KRz924s'),
    YoutubeModel(id: 17, youtubeId: '1d0rjAyX5X8'),
    YoutubeModel(id: 18, youtubeId: 'VljxjMMsy98'),
    YoutubeModel(id: 19, youtubeId: 'qghIbhJCVhg'),
    YoutubeModel(id: 20, youtubeId: 'WOX1qsYwKU0'),
    YoutubeModel(id: 21, youtubeId: 'BERRbMXeTNQ'),
    YoutubeModel(id: 22, youtubeId: 'CLf0qDuM_1g'),
    YoutubeModel(id: 23, youtubeId: 'S63fbg1MaoM'),
    YoutubeModel(id: 24, youtubeId: 'HjV6OmklI00'),
    YoutubeModel(id: 25, youtubeId: 'poe2BwaBd2U'),
    YoutubeModel(id: 26, youtubeId: 'Ioo_lUQWlTs'),
    YoutubeModel(id: 27, youtubeId: '6LVj_t0pvnY'),
    YoutubeModel(id: 28, youtubeId: 'dRcMCb3iAcA'),
    YoutubeModel(id: 29, youtubeId: '8AoFox4SA5Y'),
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
