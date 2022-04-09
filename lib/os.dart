import 'package:flutter/material.dart';
import 'package:upcourse/YT_Screens/App/Kotlin/6.dart';
import 'package:upcourse/YT_Screens/App/Kotlin/7.dart';
import 'package:upcourse/YT_Screens/App/Swift/10.dart';
import 'package:upcourse/YT_Screens/App/Swift/9.dart';
import 'package:upcourse/YT_Screens/OS/20.dart';
import 'package:upcourse/YT_Screens/OS/21.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import 'YT_Screens/App/Flutter/1.dart';
import 'YT_Screens/App/Flutter/2.dart';
import 'YT_Screens/App/Flutter/3.dart';
import 'YT_Screens/App/Flutter/4.dart';
import 'YT_Screens/App/Flutter/5.dart';


class sys extends StatefulWidget {
  const sys({Key? key}) : super(key: key);

  @override
  State<sys> createState() => _sysState();
}

class _sysState extends State<sys> {
  static const id = 'rating_page'; // see GetMaterialApp for this usage

  final controller = Get.find<Rating6Controller>(); // finding the same instance of initialized controller

  Widget _buildBody() {
    final stars = List<Widget>.generate(5, (index) {
      return GetBuilder<Rating6Controller>( // rebuilds when update() is called from GetX class
        builder: (controller) => Expanded(
          child: GestureDetector(
            child: controller.buildRatingStar(index),
            onTap: () {
              controller.updateAndStoreRating(index + 1); // +1 because index starts at 0 otherwise the star rating is offset by one
            },
          ),
        ),
      );
    });
    return Row(
      children: [
        Expanded(
          child: Row(
            children: stars,
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              controller.updateAndStoreRating(0);
            },
            child: Text(
              "Clear",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:   Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=> YoutubePlayerDemo20(title: "player")),
                );
              },
              child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width:MediaQuery.of(context).size.width/3 ,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_25.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                  )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=> YoutubePlayerDemo21(title: "player")),
                );
              },
              child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width:MediaQuery.of(context).size.width/3 ,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_26.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                  )
              ),
            ),
          ),
          // Container(
          //
          //   padding: EdgeInsets.all(30),
          //   child: GestureDetector(
          //     onTap: () {
          //       // Navigator.of(context).pop();
          //       Navigator.push(context, MaterialPageRoute(
          //           builder: (BuildContext context)=> YoutubePlayerDemo18(title: "player")),
          //       );
          //     },
          //     child: Card(
          //
          //         shadowColor: Colors.red,
          //         elevation: 8,
          //         clipBehavior: Clip.antiAlias,
          //         shape:  RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(0),
          //         ),
          //         child: Container(
          //           width:MediaQuery.of(context).size.width/3 ,
          //           height: 100,
          //           padding: EdgeInsets.all(10),
          //           decoration: BoxDecoration(
          //             image:  DecorationImage(
          //               image: AssetImage("assets/img_27.png"),
          //               fit: BoxFit.fill,
          //               alignment: Alignment.topCenter,
          //             ),
          //
          //           ),
          //
          //         )
          //     ),
          //   ),
          // ),
          _buildBody(),
        ],
      ),
    );

    // Column(
    //   children: [
    //     Container(
    //       padding: EdgeInsets.all(30),
    //       child: GestureDetector(
    //         onTap: () {
    //           // Navigator.of(context).pop();
    //           Navigator.push(context, MaterialPageRoute(
    //               builder: (BuildContext context)=> YoutubePlayerDemo13(title: "player")),
    //           );
    //         },
    //         child: Card(
    //
    //             shadowColor: Colors.red,
    //             elevation: 8,
    //             clipBehavior: Clip.antiAlias,
    //             shape:  RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(0),
    //             ),
    //             child: Container(
    //               width:MediaQuery.of(context).size.width/3 ,
    //               height: 100,
    //
    //               decoration: BoxDecoration(
    //                 image:  DecorationImage(
    //                   image: AssetImage("assets/img_20.png"),
    //                   fit: BoxFit.fill,
    //                   alignment: Alignment.topCenter,
    //                 ),
    //
    //               ),
    //
    //             )
    //         ),
    //       ),
    //     ),
    //     GestureDetector(
    //       onTap: () {
    //         // Navigator.of(context).pop();
    //         Navigator.push(context, MaterialPageRoute(
    //             builder: (BuildContext context)=> YoutubePlayerDemo14(title: "player")),
    //         );
    //       },
    //       child: Container(
    //         padding: EdgeInsets.all(30),
    //         child: Card(
    //
    //             shadowColor: Colors.red,
    //             elevation: 8,
    //             clipBehavior: Clip.antiAlias,
    //             shape:  RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(0),
    //             ),
    //             child: Container(
    //               width:MediaQuery.of(context).size.width/3 ,
    //               height: 100,
    //               padding: EdgeInsets.all(10),
    //               decoration: BoxDecoration(
    //                 image:  DecorationImage(
    //                   image: AssetImage("assets/img_23.png"),
    //                   fit: BoxFit.fill,
    //                   alignment: Alignment.topCenter,
    //                 ),
    //
    //               ),
    //
    //             )
    //         ),
    //       ),
    //     ),
    //     // Container(
    //     //   padding: EdgeInsets.all(30),
    //     //   child: Card(
    //     //
    //     //       shadowColor: Colors.red,
    //     //       elevation: 8,
    //     //       clipBehavior: Clip.antiAlias,
    //     //       shape:  RoundedRectangleBorder(
    //     //         borderRadius: BorderRadius.circular(0),
    //     //       ),
    //     //       child: Container(
    //     //         width:MediaQuery.of(context).size.width/3 ,
    //     //         height: 100,
    //     //         padding: EdgeInsets.all(10),
    //     //         decoration: BoxDecoration(
    //     //           image:  DecorationImage(
    //     //             image: AssetImage("assets/img_13.png"),
    //     //             fit: BoxFit.fill,
    //     //             alignment: Alignment.topCenter,
    //     //           ),
    //     //
    //     //         ),
    //     //
    //     //       )
    //     //   ),
    //     // ),
    //   ],
    // )


    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //
    //     appBar: AppBar(
    //       title: Container(
    //         child: Text('Dashboard'),
    //       ),
    //       bottom: TabBar(
    //         tabs: <Widget>[
    //           Container(
    //             padding: EdgeInsets.all(8.0),
    //             child: Text('FLUTTER DART'),
    //           ),
    //           Container(
    //             padding: EdgeInsets.all(8.0),
    //             child: Text('KOTLIN'),
    //           ),
    //           Container(
    //             padding: EdgeInsets.all(8.0),
    //             child: Text('SWIFT'),
    //           ),
    //         ],
    //       ),
    //     ),
    //     body: TabBarView(
    //       children: <Widget>[
    //         // _FLUTTER(),
    //         FLUTTER(),
    //         KOTLIN(),
    //         _SWIFT(),
    //
    //       ],
    //     ),
    //   ),
    // );

  }


  Widget FLUTTER() =>      Row(
    children: [
      Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=> YoutubePlayerDemo1(title: "player")),
                );
              },
              child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width:MediaQuery.of(context).size.width/3 ,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_8.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                  )
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=> YoutubePlayerDemo3(title: "player")),
                );
              },
              child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width:MediaQuery.of(context).size.width/3 ,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_13.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                  )
              ),
            ),
          ),
          Container(

            padding: EdgeInsets.all(30),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=> YoutubePlayerDemo5(title: "player")),
                );
              },
              child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width:MediaQuery.of(context).size.width/3 ,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_12.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                  )
              ),
            ),
          ),
        ],
      ),

      Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=> YoutubePlayerDemo2(title: "player")),
                );
              },
              child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width:MediaQuery.of(context).size.width/3 ,
                    height: 100,

                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_9.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                  )
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> YoutubePlayerDemo4(title: "player")),
              );
            },
            child: Container(
              padding: EdgeInsets.all(30),
              child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    width:MediaQuery.of(context).size.width/3 ,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_11.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                  )
              ),
            ),
          ),
          // Container(
          //   padding: EdgeInsets.all(30),
          //   child: Card(
          //
          //       shadowColor: Colors.red,
          //       elevation: 8,
          //       clipBehavior: Clip.antiAlias,
          //       shape:  RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(0),
          //       ),
          //       child: Container(
          //         width:MediaQuery.of(context).size.width/3 ,
          //         height: 100,
          //         padding: EdgeInsets.all(10),
          //         decoration: BoxDecoration(
          //           image:  DecorationImage(
          //             image: AssetImage("assets/img_13.png"),
          //             fit: BoxFit.fill,
          //             alignment: Alignment.topCenter,
          //           ),
          //
          //         ),
          //
          //       )
          //   ),
          // ),
        ],
      )
    ],
  );


  Widget KOTLIN(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(30),
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> YoutubePlayerDemo6(title: "player")),
              );
            },
            child: Card(

                shadowColor: Colors.red,
                elevation: 8,
                clipBehavior: Clip.antiAlias,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  width:MediaQuery.of(context).size.width/3 ,
                  height: 100,

                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage("assets/img_14.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),

                  ),

                )
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> YoutubePlayerDemo7(title: "player")),
              );
            },
            child: Card(

                shadowColor: Colors.red,
                elevation: 8,
                clipBehavior: Clip.antiAlias,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  width:MediaQuery.of(context).size.width/3 ,
                  height: 100,

                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage("assets/img_15.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),

                  ),

                )
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> YoutubePlayerDemo6(title: "player")),
              );
            },
            child: Card(

                shadowColor: Colors.red,
                elevation: 8,
                clipBehavior: Clip.antiAlias,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  width:MediaQuery.of(context).size.width/3 ,
                  height: 100,

                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage("assets/img_20.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),

                  ),

                )
            ),
          ),
        ),
      ],
    );
  }
  Widget _SWIFT(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(30),
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> YoutubePlayerDemo9(title: "player")),
              );
            },
            child: Card(

                shadowColor: Colors.red,
                elevation: 8,
                clipBehavior: Clip.antiAlias,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  width:MediaQuery.of(context).size.width/3 ,
                  height: 100,

                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage("assets/img_20.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),

                  ),

                )
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: GestureDetector(
            onTap: () {
              // Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> YoutubePlayerDemo10(title: "player")),
              );
            },
            child: Card(

                shadowColor: Colors.red,
                elevation: 8,
                clipBehavior: Clip.antiAlias,
                shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Container(
                  width:MediaQuery.of(context).size.width/3 ,
                  height: 100,

                  decoration: BoxDecoration(
                    image:  DecorationImage(
                      image: AssetImage("assets/img_18.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),

                  ),

                )
            ),
          ),
        ),
        // Container(
        //   padding: EdgeInsets.all(30),
        //   child: GestureDetector(
        //     onTap: () {
        //       // Navigator.of(context).pop();
        //       Navigator.push(context, MaterialPageRoute(
        //           builder: (BuildContext context)=> YoutubePlayerDemo6(title: "player")),
        //       );
        //     },
        //     child: Card(
        //
        //         shadowColor: Colors.red,
        //         elevation: 8,
        //         clipBehavior: Clip.antiAlias,
        //         shape:  RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(0),
        //         ),
        //         child: Container(
        //           width:MediaQuery.of(context).size.width/3 ,
        //           height: 100,
        //
        //           decoration: BoxDecoration(
        //             image:  DecorationImage(
        //               image: AssetImage("assets/img_16.png"),
        //               fit: BoxFit.fill,
        //               alignment: Alignment.topCenter,
        //             ),
        //
        //           ),
        //
        //         )
        //     ),
        //   ),
        // ),
      ],
    );
  }

}
class Rating6Controller extends GetxController {
  int currentRating = 0;
  final box = GetStorage();

  @override
  void onInit() { // called whenever we initialize the controller
    super.onInit();
    currentRating = box.read('rating') ?? 0; // initializing current rating from storage or 0 if storage is null
  }

  void updateAndStoreRating(int rating) {
    currentRating = rating;
    box.write('rating', rating); // stores to local database
    update(); // triggers a rebuild of the GetBuilder Widget
  }

  Widget buildRatingStar(int index) {
    if (index < currentRating) {
      return Icon(
        Icons.star,
        color: Colors.yellow,
      );
    } else {
      return Icon(
        Icons.star,
        color: Colors.white,
      );
    }
  }
}
