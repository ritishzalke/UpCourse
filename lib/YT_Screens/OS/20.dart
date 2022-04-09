import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upcourse/youtube_model.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';


class YoutubePlayerDemo20 extends StatefulWidget {
  YoutubePlayerDemo20({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _YoutubePlayerDemo20State createState() => _YoutubePlayerDemo20State();
}

class _YoutubePlayerDemo20State extends State<YoutubePlayerDemo20> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    YoutubeModel(id: 1, youtubeId: 'bkSWJJZNgf8'),
    YoutubeModel(id: 2, youtubeId: 'WJ-UaAaumNA'),
    YoutubeModel(id: 3, youtubeId: 'povNcHSasgs'),
    YoutubeModel(id: 4, youtubeId: '3MqyDWDpZoI'),
    YoutubeModel(id: 5, youtubeId: 'YQZbIT9FcUk'),
    YoutubeModel(id: 6, youtubeId: '2dJdHMpCLIg'),
    YoutubeModel(id: 7, youtubeId: '-Mq8Mm_NGxI'),
    YoutubeModel(id: 8, youtubeId: 'tWPa-rZiGM8'),
    YoutubeModel(id: 9, youtubeId: 'ixq5cpdEO2Q'),
    YoutubeModel(id: 10, youtubeId: 'uMMvYLB4cys'),
    YoutubeModel(id: 11, youtubeId: '8duV1LLHHJU'),
    YoutubeModel(id: 12, youtubeId: 'ITc09gOrqZk'),
    YoutubeModel(id: 13, youtubeId: '-NONm-Jq34Y'),
    YoutubeModel(id: 14, youtubeId: 'zFnrUVqtiOY'),
    YoutubeModel(id: 15, youtubeId: 'n7Owxwfr6Ko'),
    YoutubeModel(id: 16, youtubeId: 'MZdVAVMgNpA'),
    YoutubeModel(id: 17, youtubeId: 'VCIVXPoiLpU'),
    YoutubeModel(id: 18, youtubeId: 'hoN7_VMzw_g'),
    YoutubeModel(id: 19, youtubeId: 'kbfCRoNAPbY'),
    YoutubeModel(id: 20, youtubeId: 'TxjIlNYRZ5M'),
    YoutubeModel(id: 21, youtubeId: 'rsDGfFxSgiY'),
    YoutubeModel(id: 22, youtubeId: '0T5PlFVA9_k'),
    YoutubeModel(id: 23, youtubeId: 'hBPYP0ZEvS8'),
    YoutubeModel(id: 24, youtubeId: '-94WGbrWveI'),
    YoutubeModel(id: 25, youtubeId: '3Eaw1SSIqRg'),
    YoutubeModel(id: 26, youtubeId: 'iMD1Z3f9ioI'),
    YoutubeModel(id: 27, youtubeId: '16NMm0jvu2w'),
    YoutubeModel(id: 28, youtubeId: 'qMQsd7Iy5jo'),
    YoutubeModel(id: 29, youtubeId: 'TrV_dOX_YHw'),
    YoutubeModel(id: 30, youtubeId: '9hzoO4hBXFw'),
    YoutubeModel(id: 31, youtubeId: 'kMlJT1BDIMg'),
    YoutubeModel(id: 32, youtubeId: 'eoGkJWgxurQ'),
    YoutubeModel(id: 33, youtubeId: 'l5-3mbBV1BQ'),
    YoutubeModel(id: 34, youtubeId: 'Tav67viXmpA'),
    YoutubeModel(id: 35, youtubeId: 'hh9g5kKl_aE'),
    YoutubeModel(id: 36, youtubeId: 'Zdzp5k3eSYg'),
    YoutubeModel(id: 37, youtubeId: 'HHoB2t_B6MI'),
    YoutubeModel(id: 38, youtubeId: 'rWFH6PLOIEI'),
    YoutubeModel(id: 39, youtubeId: 'BW74JYB3QOM'),
    YoutubeModel(id: 40, youtubeId: 'hJhB2ddOQtg'),
    YoutubeModel(id: 41, youtubeId: 'pPM9Ajqmy_4'),
    YoutubeModel(id: 42, youtubeId: '7gMLNiEz3nw'),
    YoutubeModel(id: 43, youtubeId: 'k8BHyy6gBls'),
    YoutubeModel(id: 44, youtubeId: 'mGBjd2WoODs'),
    YoutubeModel(id: 45, youtubeId: '6uEf_F1S-Jo'),
    YoutubeModel(id: 46, youtubeId: 'eESIFJz7mJw'),
    YoutubeModel(id: 47, youtubeId: 'FrTttJLN7Kw'),
    YoutubeModel(id: 48, youtubeId: 'bK-VhQA512c'),
    YoutubeModel(id: 49, youtubeId: 'JdPmsrYqRDY'),
    YoutubeModel(id: 50, youtubeId: 'N3rG_1CEQkQ'),
    YoutubeModel(id: 51, youtubeId: 'W7wDlABjCQI'),
    YoutubeModel(id: 52, youtubeId: 'XOFTINaUZt8'),
    YoutubeModel(id: 53, youtubeId: 'I2TbCGNv1xQ'),
    YoutubeModel(id: 54, youtubeId: '6c-mOFZwP_8'),
    YoutubeModel(id: 55, youtubeId: '30P73tWmU0s'),
    YoutubeModel(id: 56, youtubeId: 'L80DakYu4uw'),
    YoutubeModel(id: 57, youtubeId: 'JyPMJnnkNmQ'),
    YoutubeModel(id: 58, youtubeId: 'PiEq1CoP0ds'),
    YoutubeModel(id: 59, youtubeId: 'spApKfUa8BI'),
    YoutubeModel(id: 60, youtubeId: 'ucNJMcX-duE'),
    YoutubeModel(id: 61, youtubeId: 'IyWaK8pbN6A'),
    YoutubeModel(id: 62, youtubeId: 'dz9Tk6KCMlQ'),
    YoutubeModel(id: 63, youtubeId: 'Quj-Goz4VMA'),
    YoutubeModel(id: 64, youtubeId: 'o2_iCzS9-ZQ'),
    YoutubeModel(id: 65, youtubeId: 'Z2T2vnyZl0o'),
    YoutubeModel(id: 66, youtubeId: 'Z4vzWxCcDCY'),
    YoutubeModel(id: 67, youtubeId: '8rcUs5RutX0'),
    YoutubeModel(id: 68, youtubeId: 'pR1uhp--COc'),
    YoutubeModel(id: 69, youtubeId: 'q2BpMvPhhrY'),
    YoutubeModel(id: 70, youtubeId: 'dYIoWkCvd6A'),
    YoutubeModel(id: 71, youtubeId: 'H3BU_Do_l-Q'),
    YoutubeModel(id: 72, youtubeId: 'sveZw_GG_cs'),
    YoutubeModel(id: 73, youtubeId: 'udZi6uiR8bM'),
    YoutubeModel(id: 74, youtubeId: '9uoa_p8q47Y'),
    YoutubeModel(id: 75, youtubeId: 'yP89YlEGCqA'),
    YoutubeModel(id: 76, youtubeId: 'P_dA8VGJjA8'),
    YoutubeModel(id: 77, youtubeId: 'xouo556RGiE'),
    YoutubeModel(id: 78, youtubeId: 'Q2qcqX_hvR0'),
    YoutubeModel(id: 79, youtubeId: 'vLqZ6ZMBkX8'),
    YoutubeModel(id: 80, youtubeId: 'gwCgG5ORXW8'),
    YoutubeModel(id: 81, youtubeId: 'AF3FoARvtcc'),
    YoutubeModel(id: 82, youtubeId: '0LtuQhNFFe0'),
    YoutubeModel(id: 83, youtubeId: 'q1wGGZbOr4s'),
    YoutubeModel(id: 84, youtubeId: 'J6wVO4pvUCw'),
    YoutubeModel(id: 85, youtubeId: 'XHx-ms5Ldi4'),
    YoutubeModel(id: 86, youtubeId: 'irGdM3iIS54'),
    YoutubeModel(id: 87, youtubeId: 'S6lLRz7SQUw'),
    YoutubeModel(id: 88, youtubeId: 'BJ13GsC0_os'),
    YoutubeModel(id: 89, youtubeId: 'DKb7KhfoZmU'),
    YoutubeModel(id: 90, youtubeId: '10tZ7JBiN0w'),
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
