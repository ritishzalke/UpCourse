import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo111 extends StatefulWidget {
  const YoutubePlayerDemo111({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo111State createState() => _YoutubePlayerDemo111State();
}

class _YoutubePlayerDemo111State extends State<YoutubePlayerDemo111> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'TKYsuU86-DQ'),
    YoutubeModel(id: 2, youtubeId: 'pm5OVxpul48'),
    YoutubeModel(id: 3, youtubeId: 'bupWPZdXqIA'),
    YoutubeModel(id: 4, youtubeId: 'XXrpsQqAlIQ'),
    YoutubeModel(id: 5, youtubeId: '8bZ4RPjOPYE'),
    YoutubeModel(id: 6, youtubeId: '1YO_5jXC-bo'),
    YoutubeModel(id: 7, youtubeId: 'YNSnugnQYiI'),
    YoutubeModel(id: 8, youtubeId: 'ZJqchijLuLE'),
    YoutubeModel(id: 9, youtubeId: 'wXUhTZpF_HQ'),
    YoutubeModel(id: 10, youtubeId: 'azZCW24XtT4'),
    YoutubeModel(id: 11, youtubeId: 'Hwq_Mr12bcI'),
    YoutubeModel(id: 12, youtubeId: 'lkDrG7G77Fg'),
    YoutubeModel(id: 13, youtubeId: 'DiSvq5SgLMI'),
    YoutubeModel(id: 14, youtubeId: 'mFgltjfVV6A'),
    YoutubeModel(id: 15, youtubeId: 'Fb-lny3-7Lo'),
    YoutubeModel(id: 16, youtubeId: '_w6N_nplmAw'),
    YoutubeModel(id: 17, youtubeId: 'OOy764mDtiA'),
    YoutubeModel(id: 18, youtubeId: 'ZYV6dYtz4HA'),
    YoutubeModel(id: 19, youtubeId: 'kbLfWKGVsMQ'),
    YoutubeModel(id: 20, youtubeId: 'ytHTIdpVM2M'),
    YoutubeModel(id: 21, youtubeId: '9ie8M8Bc_zg'),
    YoutubeModel(id: 22, youtubeId: '0e02dl66PYo'),
    YoutubeModel(id: 23, youtubeId: 'Z2quX2qWmEA'),
    YoutubeModel(id: 24, youtubeId: 'EJ0xvY5wT5Q'),
    YoutubeModel(id: 25, youtubeId: 'E5MEzC0prd4'),
    YoutubeModel(id: 26, youtubeId: 'dK27jWKtJxs'),
    YoutubeModel(id: 27, youtubeId: 'h0C-1KihSPA'),
    YoutubeModel(id: 28, youtubeId: 'o3Gfsc6kihk'),
    YoutubeModel(id: 29, youtubeId: 'xE7VOZbHhFY'),
    YoutubeModel(id: 30, youtubeId: 'P9MB218jzF4'),
    YoutubeModel(id: 31, youtubeId: 'I98MaARkdho'),
    YoutubeModel(id: 32, youtubeId: 'xtoAfUB6Ubw'),
    YoutubeModel(id: 33, youtubeId: 'kPtS4vO42II'),
    YoutubeModel(id: 34, youtubeId: '-6LyG9I-FPc'),
    YoutubeModel(id: 35, youtubeId: 'oRbLowjKVzI'),
    YoutubeModel(id: 36, youtubeId: 'jPPG4RoK5ag'),
    YoutubeModel(id: 37, youtubeId: 'W-YHT9xHBgA'),
    YoutubeModel(id: 38, youtubeId: 'TQLqn5jHIZQ'),
    YoutubeModel(id: 39, youtubeId: 'HgwCeNVPlo0'),
    YoutubeModel(id: 40, youtubeId: 'kEf1xSwX5D8'),
    YoutubeModel(id: 41, youtubeId: 'rgUp302f_lY'),
    YoutubeModel(id: 42, youtubeId: 'qlCIXXhSX6Y'),
    YoutubeModel(id: 43, youtubeId: '9CY0V0JAgNU'),
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
