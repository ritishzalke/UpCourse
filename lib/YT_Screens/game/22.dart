import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo22 extends StatefulWidget {
  YoutubePlayerDemo22({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo22State createState() => _YoutubePlayerDemo22State();
}

class _YoutubePlayerDemo22State extends State<YoutubePlayerDemo22> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'j48LtUkZRjU'),
    YoutubeModel(id: 2, youtubeId: 'IlKaB1etrik'),
    YoutubeModel(id: 3, youtubeId: '9ZEu_I-ido4'),
    YoutubeModel(id: 4, youtubeId: 'Au8oX5pu5u4'),
    YoutubeModel(id: 5, youtubeId: 'HVB6UVcb3f8'),
    YoutubeModel(id: 6, youtubeId: 'gAB64vfbrhI'),
    YoutubeModel(id: 7, youtubeId: 'D4I0I3QJAvc'),
    YoutubeModel(id: 8, youtubeId: 'TAGZxRMloyU'),
    YoutubeModel(id: 9, youtubeId: 'VbZ9_C4-Qbo'),
    YoutubeModel(id: 10, youtubeId: 'Iv7A8TzreY4'),
    YoutubeModel(id: 11, youtubeId: 'r5NWZoTSjWs'),
    YoutubeModel(id: 12, youtubeId: '7nxKAtxGSn8'),
    YoutubeModel(id: 13, youtubeId: 'JDVuTBHnGWw'),
    YoutubeModel(id: 14, youtubeId: 'vZU51tbgMXk'),
    YoutubeModel(id: 15, youtubeId: 'IHeMmFxvmkY'),
    YoutubeModel(id: 16, youtubeId: 'MFQhpwc6cKE'),
    YoutubeModel(id: 17, youtubeId: 'owZneI02YOU'),
    YoutubeModel(id: 18, youtubeId: '6OT43pvUyfY'),
    YoutubeModel(id: 19, youtubeId: 'CLSiRf_OrBk'),
    YoutubeModel(id: 20, youtubeId: 'VnG2gOKV9dw'),
    YoutubeModel(id: 21, youtubeId: 'ryISV_nH8qw'),
    YoutubeModel(id: 22, youtubeId: 'FEA1wTMJAR0'),
    YoutubeModel(id: 23, youtubeId: 'wwm98VdzD8s'),
    YoutubeModel(id: 24, youtubeId: '9A9yj8KnM8c'),
    YoutubeModel(id: 25, youtubeId: 'ifNyVS2_6f8'),
    YoutubeModel(id: 26, youtubeId: 'CHV1ymlw-P8'),
    YoutubeModel(id: 27, youtubeId: 'JWAnQiN9Zkw'),
    YoutubeModel(id: 28, youtubeId: 'blPglabGueM'),
    YoutubeModel(id: 29, youtubeId: 'UtNvtIrJcNc'),
    YoutubeModel(id: 30, youtubeId: 'PUSOg5YEflM'),
    YoutubeModel(id: 31, youtubeId: 'Ar9eIn4z6XE'),
    YoutubeModel(id: 32, youtubeId: 'KGGB5LFEejg'),
    YoutubeModel(id: 33, youtubeId: 'qsU4nM0L_n0'),
    YoutubeModel(id: 34, youtubeId: 'on9nwbZngyw'),
    YoutubeModel(id: 35, youtubeId: 'dwcT-Dch0bA'),
    YoutubeModel(id: 36, youtubeId: '6_gAiPPKyUg'),
    YoutubeModel(id: 37, youtubeId: '2jTY11Am0Ig'),
    YoutubeModel(id: 38, youtubeId: 'wkKsl1Mfp5M'),
    YoutubeModel(id: 39, youtubeId: 'GSo_fU1JdfM'),
    YoutubeModel(id: 40, youtubeId: 'eXIuizGzY2A'),
    YoutubeModel(id: 41, youtubeId: 'FvZNVQuLDjI'),
    YoutubeModel(id: 42, youtubeId: 'Pzd8NhcRzVo'),
    YoutubeModel(id: 43, youtubeId: 'R6D1b7zZHHA'),
    YoutubeModel(id: 44, youtubeId: 'R6D1b7zZHHA'),
    YoutubeModel(id: 45, youtubeId: 'e7VEe_qW4oE'),
    YoutubeModel(id: 46, youtubeId: '12gkcdLc77s'),
    YoutubeModel(id: 47, youtubeId: 'Vg0L9aCRWPE'),
    YoutubeModel(id: 48, youtubeId: 'IC9g5hlfV6o'),
    YoutubeModel(id: 49, youtubeId: 'nkgGyO9VG54'),
    YoutubeModel(id: 50, youtubeId: 'p-3S73MaDP8'),
    YoutubeModel(id: 51, youtubeId: 'whzomFgjT50'),
    YoutubeModel(id: 52, youtubeId: 'LNLVOjbrQj4'),
    YoutubeModel(id: 53, youtubeId: '_QajrabyTJc'),
    YoutubeModel(id: 54, youtubeId: 'wnzJ06Y8mdg'),
    YoutubeModel(id: 55, youtubeId: 'b4oqOdBCy3c'),
    YoutubeModel(id: 56, youtubeId: 'jE3ZJ_tCGTo'),
    YoutubeModel(id: 57, youtubeId: 'sPiVz1k-fEs'),
    YoutubeModel(id: 58, youtubeId: 'iCEHarLRCzI'),
    YoutubeModel(id: 59, youtubeId: 'CE9VOZivb3I'),
    YoutubeModel(id: 60, youtubeId: '_E0JXOZDTKA'),
    YoutubeModel(id: 61, youtubeId: '5dzGj9k8Qy8'),
    YoutubeModel(id: 62, youtubeId: '4HpC--2iowE'),
    YoutubeModel(id: 63, youtubeId: '9tjYz6Ab0oc'),
    // YoutubeModel(id: 64, youtubeId: 'o2_iCzS9-ZQ'),
    // YoutubeModel(id: 65, youtubeId: 'Z2T2vnyZl0o'),
    // YoutubeModel(id: 66, youtubeId: 'Z4vzWxCcDCY'),
    // YoutubeModel(id: 67, youtubeId: '8rcUs5RutX0'),
    // YoutubeModel(id: 68, youtubeId: 'pR1uhp--COc'),
    // YoutubeModel(id: 69, youtubeId: 'q2BpMvPhhrY'),
    // YoutubeModel(id: 70, youtubeId: 'dYIoWkCvd6A'),
    // YoutubeModel(id: 71, youtubeId: 'H3BU_Do_l-Q'),
    // YoutubeModel(id: 72, youtubeId: 'sveZw_GG_cs'),
    // YoutubeModel(id: 73, youtubeId: 'udZi6uiR8bM'),
    // YoutubeModel(id: 74, youtubeId: '9uoa_p8q47Y'),
    // YoutubeModel(id: 75, youtubeId: 'yP89YlEGCqA'),
    // YoutubeModel(id: 76, youtubeId: 'P_dA8VGJjA8'),
    // YoutubeModel(id: 77, youtubeId: 'xouo556RGiE'),
    // YoutubeModel(id: 78, youtubeId: 'Q2qcqX_hvR0'),
    // YoutubeModel(id: 79, youtubeId: 'vLqZ6ZMBkX8'),
    // YoutubeModel(id: 80, youtubeId: 'gwCgG5ORXW8'),
    // YoutubeModel(id: 81, youtubeId: 'AF3FoARvtcc'),
    // YoutubeModel(id: 82, youtubeId: '0LtuQhNFFe0'),
    // YoutubeModel(id: 83, youtubeId: 'q1wGGZbOr4s'),
    // YoutubeModel(id: 84, youtubeId: 'J6wVO4pvUCw'),
    // YoutubeModel(id: 85, youtubeId: 'XHx-ms5Ldi4'),
    // YoutubeModel(id: 86, youtubeId: 'irGdM3iIS54'),
    // YoutubeModel(id: 87, youtubeId: 'S6lLRz7SQUw'),
    // YoutubeModel(id: 88, youtubeId: 'BJ13GsC0_os'),
    // YoutubeModel(id: 89, youtubeId: 'DKb7KhfoZmU'),
    // YoutubeModel(id: 90, youtubeId: '10tZ7JBiN0w'),
    // YoutubeModel(id: 91, youtubeId: 'kflveJ5_-iFA'),
    // YoutubeModel(id: 92, youtubeId: '8NZZSgtTelc'),
    // YoutubeModel(id: 93, youtubeId: 'rDjSD1vcsRI'),
    // YoutubeModel(id: 94, youtubeId: '9CY0V0JAgNU'),
    // YoutubeModel(id: 95, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 96, youtubeId: 'o3Gfsc6kihk'),
    // YoutubeModel(id: 97, youtubeId: 'o3Gfsc6kihk'),



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
