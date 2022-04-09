
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import 'package:upcourse/res/Resources.dart';

import 'Category.dart';

import 'appdev.dart';

import 'design.dart';
import 'dsa.dart';
import 'game.dart';

import 'os.dart';
import 'wd.dart';


Future<void> main() async {
  await GetStorage.init();
  // Get.lazyPut(()=>Rating1Controller());
  Get.put(RatingController());
  Get.put(Rating2Controller());
  Get.put(Rating4Controller());
  Get.put(Rating6Controller());
  // Get.put(Rating8Controller());
  Get.put(Rating10Controller());
  Get.put(Rating14Controller());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(title: "home"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _checkboxValue = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3 = false;
  bool _checkboxValue4 = false;
  bool _checkboxValue5 = false;
  bool _checkboxValue6 = false;
  void initState() {
    super.initState();

    _loadswitchValue();
  }


  _loadswitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {


      _checkboxValue = (prefs.getBool('1')) ?? false;
      _checkboxValue2 = (prefs.getBool('2')) ?? false;
      _checkboxValue3 = (prefs.getBool('3')) ?? false;
      _checkboxValue4 = (prefs.getBool('4')) ?? false;
      _checkboxValue5 = (prefs.getBool('5')) ?? false;
      _checkboxValue6 = (prefs.getBool('6')) ?? false;
    });
  }

  savenswitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {

      prefs.setBool('1', _checkboxValue);
      prefs.setBool('2', _checkboxValue2);
      prefs.setBool('3', _checkboxValue3);
      prefs.setBool('4', _checkboxValue4);
      prefs.setBool('5', _checkboxValue5);
      prefs.setBool('6', _checkboxValue6);
      // prefs.setBool('moon', check);
      // prefs.setBool('powerpuff', check2);
      // prefs.setBool('imparator', check3);
    });
  }
  _getPage1(bool page) {

    switch(page) {
      case true:
        return Column(
          children: [
            SizedBox(
              height: 150,
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context)=> AppDev()),
                  );

                },
                child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width/2 ,
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img.png"),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                    // padding: EdgeInsets.all(16),
                    // child: Row(
                    //   crossAxisAlignment:CrossAxisAlignment.end,
                    //   children: [
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.60,
                    //
                    //       child: Column(
                    //
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Book an appointment',
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.bold,
                    //
                    //             ),
                    //
                    //           ),
                    //           const SizedBox(height: 20),
                    //           Text(
                    //             'Check the list of various doctors and fix an appointment with Them!',
                    //             style: TextStyle(
                    //               fontSize: 14,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.15,
                    //
                    //
                    //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
                    //
                    //     ),
                    //   ],
                    // ),
                  ),

                ),
              ),
            ),

            Text(
              'APP DEV',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.red,),
            )
          ],
        );

      case false:
        return Column(
          children: <Widget>[

          ],
        );
    }
  }


  _getPage3(bool page) {

    switch(page) {
      case true:
        return Column(
          children: [
            SizedBox(
              height: 150,
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context)=> UIU()),
                  );

                },
                child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(

                    width: MediaQuery.of(context).size.width/2 ,
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_24.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                    // padding: EdgeInsets.all(16),
                    // child: Row(
                    //   crossAxisAlignment:CrossAxisAlignment.end,
                    //   children: [
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.60,
                    //
                    //       child: Column(
                    //
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Book an appointment',
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.bold,
                    //
                    //             ),
                    //
                    //           ),
                    //           const SizedBox(height: 20),
                    //           Text(
                    //             'Check the list of various doctors and fix an appointment with Them!',
                    //             style: TextStyle(
                    //               fontSize: 14,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.15,
                    //
                    //
                    //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
                    //
                    //     ),
                    //   ],
                    // ),
                  ),

                ),
              )
            ),

            Text(
              'UI/UX',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.red,),
            )
          ],
        );

      case false:
        return Column(
          children: <Widget>[

          ],
        );
    }
  }
  _getPage4(bool page) {

    switch(page) {
      case true:
        return Column(
          children: [
            SizedBox(
                height: 150,
                child: GestureDetector(

                  onTap: () {
                    // Navigator.of(context).pop();
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context)=> data()),
                    );

                  },
                  child: Card(

                    shadowColor: Colors.red,
                    elevation: 8,
                    clipBehavior: Clip.antiAlias,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Container(

                      width: MediaQuery.of(context).size.width/2 ,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                          image: AssetImage("assets/img_2.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),

                      ),

                      // padding: EdgeInsets.all(16),
                      // child: Row(
                      //   crossAxisAlignment:CrossAxisAlignment.end,
                      //   children: [
                      //
                      //     SizedBox(
                      //       width: MediaQuery.of(context).size.width*0.60,
                      //
                      //       child: Column(
                      //
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Text(
                      //             'Book an appointment',
                      //             style: TextStyle(
                      //               fontSize: 20,
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.bold,
                      //
                      //             ),
                      //
                      //           ),
                      //           const SizedBox(height: 20),
                      //           Text(
                      //             'Check the list of various doctors and fix an appointment with Them!',
                      //             style: TextStyle(
                      //               fontSize: 14,
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //
                      //     SizedBox(
                      //       width: MediaQuery.of(context).size.width*0.15,
                      //
                      //
                      //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
                      //
                      //     ),
                      //   ],
                      // ),
                    ),

                  ),
                ),
            ),

            Text(
              'DSA',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.red,),
            )
          ],
        );

      case false:
        return Column(
          children: <Widget>[

          ],
        );
    }
  }
  _getPage6(bool page) {

    switch(page) {
      case true:
        return Column(
          children: [
            SizedBox(
              height: 150,
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context)=> game()),
                  );

                },
                child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(

                    width: MediaQuery.of(context).size.width/2 ,
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_6.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                    // padding: EdgeInsets.all(16),
                    // child: Row(
                    //   crossAxisAlignment:CrossAxisAlignment.end,
                    //   children: [
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.60,
                    //
                    //       child: Column(
                    //
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Book an appointment',
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.bold,
                    //
                    //             ),
                    //
                    //           ),
                    //           const SizedBox(height: 20),
                    //           Text(
                    //             'Check the list of various doctors and fix an appointment with Them!',
                    //             style: TextStyle(
                    //               fontSize: 14,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.15,
                    //
                    //
                    //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
                    //
                    //     ),
                    //   ],
                    // ),
                  ),

                ),
              ),
            ),

            Text(
              'GAME DEV',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.red,),
            )
          ],
        );

      case false:
        return Column(
          children: <Widget>[

          ],
        );
    }
  }
  _getPage5(bool page) {

    switch(page) {
      case true:
        return Column(
          children: [
            SizedBox(
              height: 150,
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context)=> sys()),
                  );

                },
                child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(

                    width: MediaQuery.of(context).size.width/2 ,
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_5.png"),
                        fit: BoxFit.fill,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                    // padding: EdgeInsets.all(16),
                    // child: Row(
                    //   crossAxisAlignment:CrossAxisAlignment.end,
                    //   children: [
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.60,
                    //
                    //       child: Column(
                    //
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Book an appointment',
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.bold,
                    //
                    //             ),
                    //
                    //           ),
                    //           const SizedBox(height: 20),
                    //           Text(
                    //             'Check the list of various doctors and fix an appointment with Them!',
                    //             style: TextStyle(
                    //               fontSize: 14,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.15,
                    //
                    //
                    //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
                    //
                    //     ),
                    //   ],
                    // ),
                  ),

                ),
              ),
            ),

            Text(
              'OPERATING SYSTEMS',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.red,),
            )
          ],
        );

      case false:
        return Column(
          children: <Widget>[

          ],
        );
    }
  }
  _getPage2(bool page) {

    switch(page) {
      case true:
        return Column(
          children: [
            SizedBox(
              height: 150,
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context)=> WebDev()),
                  );

                },
                child: Card(

                  shadowColor: Colors.red,
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Container(

                    width: MediaQuery.of(context).size.width/2 ,
                    decoration: BoxDecoration(
                      image:  DecorationImage(
                        image: AssetImage("assets/img_1.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),

                    ),

                    // padding: EdgeInsets.all(16),
                    // child: Row(
                    //   crossAxisAlignment:CrossAxisAlignment.end,
                    //   children: [
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.60,
                    //
                    //       child: Column(
                    //
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             'Book an appointment',
                    //             style: TextStyle(
                    //               fontSize: 20,
                    //               color: Colors.white,
                    //               fontWeight: FontWeight.bold,
                    //
                    //             ),
                    //
                    //           ),
                    //           const SizedBox(height: 20),
                    //           Text(
                    //             'Check the list of various doctors and fix an appointment with Them!',
                    //             style: TextStyle(
                    //               fontSize: 14,
                    //               color: Colors.white,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width*0.15,
                    //
                    //
                    //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
                    //
                    //     ),
                    //   ],
                    // ),
                  ),

                ),
              ),
            ),

            Text(
              'WEB DEV',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.red,),
            )
          ],
        );

      case false:
        return Column(
          children: <Widget>[

          ],
        );
    }
  }
  List<Movie> favoriteMovies = [
    Movie('DSA'),
    Movie('APP DEVELOPMENT'),
    Movie('WEB DEVELOPMENT'),
    Movie('AI/ML'),
    Movie('GAME DEVELOPMENT')
  ];
  int i= 5;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
elevation: 0.0,
        backgroundColor: Colors.deepPurple,
      ),
drawer:  Drawer(
  backgroundColor: Colors.black,
    child: ListView(
    children: [
    // new UserAccountsDrawerHeader(
    //   accountName: Text('Ritish'),
    //   accountEmail: Text('ricjjcd@gmail.com'),
    //   currentAccountPicture: const CircleAvatar(
    //     backgroundImage: NetworkImage('https://images.squarespace-cdn.com/content/v1/5824673c2e69cfc8ac1e3cd3/1580377764933-1L0AVRF4MU86B18J3S4A/Picture+of+woodlands+taken+on+iphone+using+natural+light'),
    //   ) ,
    // ),

    ListTile(
        title: Text("Resources", style: TextStyle(color: Colors.deepPurple),),
    onTap: (){
    // Navigator.of(context).pop();
    Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context)=> Resources(),
    ),
    //
    );
    },
    ),

    ],
    ),


    ),
      body:  Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
      child: Column(
      children: [
      Container(
      height: 78,
      margin: EdgeInsets.only(top: 6),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      SizedBox(
      width: 32,
      ),
      Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
      image: DecorationImage(
      image: NetworkImage("https://unsplash.com/photos/Y7C7F26fzZM/download?force=true&w=640"),
      fit: BoxFit.cover
    ),
    borderRadius: BorderRadius.circular(36),
    border: Border.all(width: 2.0,color: Colors.white)
    ),
    ),
    SizedBox(
    width: 16,
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Hi, Ritish",

    ),
    SizedBox(
    height: 8,
    ),
    Text(
    "Learning is easier and faster with us.",

    ),
    ],
    )
    ],
    ),
    ),
    Expanded(
    child: Container(
    clipBehavior: Clip.antiAlias,
    alignment: Alignment.topLeft,
    decoration: BoxDecoration(
color: Colors.black,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(48),
    topRight: Radius.circular(48),
    )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(


                          children: <Widget>[
                            Center(
                              child: Text("CHOOSE YOUR COURSES", style: TextStyle(color: Colors.red),),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text("APP DEV", style: TextStyle(color: Colors.purple),),
                                    Checkbox(
                                       fillColor: MaterialStateProperty.all(Colors.red),
                                        value: _checkboxValue,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checkboxValue = value??false;

                                            savenswitchValue();
                                          });
                                        }
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("WEB DEV", style: TextStyle(color: Colors.purple),),
                                    Checkbox(
                                        fillColor: MaterialStateProperty.all(Colors.red),
                                        value: _checkboxValue2,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checkboxValue2 = value??false;

                                            savenswitchValue();
                                          });
                                        }
                                    ),
                                  ],
                                ),

                              ],
                            ),




                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text("UI/UX", style: TextStyle(color: Colors.purple),),
                                    Checkbox(
                                        fillColor: MaterialStateProperty.all(Colors.red),
                                        value: _checkboxValue3,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checkboxValue3 = value??false;

                                            savenswitchValue();
                                          });
                                        }
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("DSA", style: TextStyle(color: Colors.purple),),
                                    Checkbox(
                                        fillColor: MaterialStateProperty.all(Colors.red),
                                        value: _checkboxValue4,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checkboxValue4 = value??false;

                                            savenswitchValue();
                                          });
                                        }
                                    ),
                                  ],
                                ),

                              ],
                            ),



                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text("OS", style: TextStyle(color: Colors.purple),),
                                    Checkbox(
                                        fillColor: MaterialStateProperty.all(Colors.red),
                                        value: _checkboxValue5,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checkboxValue5 = value??false;

                                            savenswitchValue();
                                          });
                                        }
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("GAME DEV", style: TextStyle(color: Colors.purple),),
                                    Checkbox(
                                        fillColor: MaterialStateProperty.all(Colors.red),
                                        value: _checkboxValue6,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _checkboxValue6 = value??false;

                                            savenswitchValue();
                                          });
                                        }
                                    ),
                                  ],
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),


                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: RaisedButton(
                      //     color: Colors.pinkAccent,
                      //     child: Text("Seç"),
                      //     onPressed: () {
                      //       _showCupertinoDialog("widget.title");
                      //     },
                      //   ),
                      // ),









                    ]
                ),
              ),


            ),
            Container(padding: EdgeInsets.all(25),
              child: SizedBox(
                child: Text("FOR YOU",textAlign: TextAlign.left, style: TextStyle(color:Colors.white, fontSize: 25, ),
                ),
              ),
            ),

         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: [
               Column(

                 children: [
                   SizedBox(

         height: 200,
         child:  _getPage1(_checkboxValue),

                  ),

                 ],
               ),
               Padding(padding: EdgeInsets.only(left: 15),

               ),
               Column(

                 children: [
                   SizedBox(
                     height: 200,
                     child: _getPage2(_checkboxValue2),
                   ),


                 ],
               ),
               Padding(padding: EdgeInsets.only(left: 15),

               ),
               Column(

                 children: [
                   SizedBox(
                     height: 200,
                     child:_getPage3(_checkboxValue3),
                   ),

                
                 ],
               ),
               Padding(padding: EdgeInsets.only(left: 15),

               ),
               Column(

                 children: [
                   SizedBox(
                     height: 200,
                     child: _getPage4(_checkboxValue4),
                   ),

                  
                 ],
               ),
               Padding(padding: EdgeInsets.only(left: 15),

               ),
               // Column(
               //
               //   children: [
               //     SizedBox(
               //       height: 200,
               //       child: DBMS(),
               //     ),
               //
               //     Text(
               //       'DBMS',
               //       style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold , color: Colors.red,),
               //     )
               //   ],
               // ),
               // Padding(padding: EdgeInsets.only(left: 15),
               //
               // ),
               Column(

                 children: [

                   SizedBox(
                     height: 200,
                     child: _getPage5(_checkboxValue5),
                   ),

                   
                 ],
               ),
               Padding(padding: EdgeInsets.only(left: 15),

               ),
               Column(

                 children: [
                   SizedBox(
                     height: 200,
                     child: _getPage6(_checkboxValue6),
                   ),

                  
                 ],
               ),
             ],
           ),
         ),// card height
           // child:ListView.builder(scrollDirection: Axis.horizontal ,itemBuilder:  (BuildContext context, i) =>
           //     Card(
           //       child: Container(
           //
           //         child: Column(
           //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           //           children: <Widget>[
           //             Text('Discipline curl'),
           //             Text('https://sgdfgdgd/jdkjdhj.png/jashdghd'),
           //             Text('20'),
           //             Text('akhsgdahghsgdh')
           //           ],
           //         ),
           //       ),
           //     ),
           //     )
          //
          // ListView.builder(
          //   padding: EdgeInsets.symmetric(vertical: 16.0),
          //   itemBuilder: (BuildContext context, int index) {
          //     if(index % 2 == 0) {
          //       return _buildCarousel(context, index ~/ 2);
          //     }
          //     else {
          //       return Divider();
          //     }
          //   },
          // ),
// Column(
//   children: [
//         Container(
//
//       width: MediaQuery.of(context).size.width,
//
//     ),
//   ],
// )
          ],
        ),
      ),

    ),
    ),

        ],
      ),
    ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
  // Widget _buildCarousel(BuildContext context, int carouselIndex) {
  //   return Column(
  //     mainAxisSize: MainAxisSize.min,
  //     children: <Widget>[
  //
  //       SizedBox(
  //         // you may want to use an aspect ratio here for tablet support
  //         height: 200.0,
  //         child: PageView.builder(
  //           // store this controller in a State to save the carousel scroll position
  //           controller: PageController(viewportFraction: 0.8),
  //           itemBuilder: (BuildContext context, int itemIndex) {
  //             return _buildCarouselItem(context, carouselIndex, itemIndex);
  //           },
  //         ),
  //       )
  //     ],
  //   );
  // }
  Widget APPDEV() =>      GestureDetector(
    onTap: () {
      // Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context)=> AppDev()),
      );

    },
    child: Card(

          shadowColor: Colors.red,
          elevation: 8,
          clipBehavior: Clip.antiAlias,
          shape:  RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width/2 ,
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage("assets/img.png"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),

            ),

            // padding: EdgeInsets.all(16),
            // child: Row(
            //   crossAxisAlignment:CrossAxisAlignment.end,
            //   children: [
            //
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width*0.60,
            //
            //       child: Column(
            //
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             'Book an appointment',
            //             style: TextStyle(
            //               fontSize: 20,
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold,
            //
            //             ),
            //
            //           ),
            //           const SizedBox(height: 20),
            //           Text(
            //             'Check the list of various doctors and fix an appointment with Them!',
            //             style: TextStyle(
            //               fontSize: 14,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //
            //     SizedBox(
            //       width: MediaQuery.of(context).size.width*0.15,
            //
            //
            //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
            //
            //     ),
            //   ],
            // ),
          ),

        ),
  );
  Widget WEBDEV() =>      GestureDetector(
    onTap: () {
      // Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context)=> WebDev()),
      );

    },
    child: Card(

      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(

        width: MediaQuery.of(context).size.width/2 ,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/img_1.png"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),

        ),

        // padding: EdgeInsets.all(16),
        // child: Row(
        //   crossAxisAlignment:CrossAxisAlignment.end,
        //   children: [
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.60,
        //
        //       child: Column(
        //
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             'Book an appointment',
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //
        //             ),
        //
        //           ),
        //           const SizedBox(height: 20),
        //           Text(
        //             'Check the list of various doctors and fix an appointment with Them!',
        //             style: TextStyle(
        //               fontSize: 14,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.15,
        //
        //
        //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
        //
        //     ),
        //   ],
        // ),
      ),

    ),
  );
  // Widget DBMS() =>      Card(
  //
  //   shadowColor: Colors.red,
  //   elevation: 8,
  //   clipBehavior: Clip.antiAlias,
  //   shape:  RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(24),
  //   ),
  //   child: Container(
  //
  //     width: MediaQuery.of(context).size.width ,
  //     decoration: BoxDecoration(
  //       image:  DecorationImage(
  //         image: AssetImage("assets/img_3.png"),
  //         fit: BoxFit.fill,
  //         alignment: Alignment.topCenter,
  //       ),
  //
  //     ),
  //
  //     // padding: EdgeInsets.all(16),
  //     // child: Row(
  //     //   crossAxisAlignment:CrossAxisAlignment.end,
  //     //   children: [
  //     //
  //     //     SizedBox(
  //     //       width: MediaQuery.of(context).size.width*0.60,
  //     //
  //     //       child: Column(
  //     //
  //     //         crossAxisAlignment: CrossAxisAlignment.start,
  //     //         children: [
  //     //           Text(
  //     //             'Book an appointment',
  //     //             style: TextStyle(
  //     //               fontSize: 20,
  //     //               color: Colors.white,
  //     //               fontWeight: FontWeight.bold,
  //     //
  //     //             ),
  //     //
  //     //           ),
  //     //           const SizedBox(height: 20),
  //     //           Text(
  //     //             'Check the list of various doctors and fix an appointment with Them!',
  //     //             style: TextStyle(
  //     //               fontSize: 14,
  //     //               color: Colors.white,
  //     //             ),
  //     //           ),
  //     //         ],
  //     //       ),
  //     //     ),
  //     //
  //     //     SizedBox(
  //     //       width: MediaQuery.of(context).size.width*0.15,
  //     //
  //     //
  //     //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
  //     //
  //     //     ),
  //     //   ],
  //     // ),
  //   ),
  //
  // );
  Widget GameDev() =>      GestureDetector(
    onTap: () {
      // Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context)=> game()),
      );

    },
    child: Card(

      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(

        width: MediaQuery.of(context).size.width/2 ,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/img_6.png"),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),

        ),

        // padding: EdgeInsets.all(16),
        // child: Row(
        //   crossAxisAlignment:CrossAxisAlignment.end,
        //   children: [
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.60,
        //
        //       child: Column(
        //
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             'Book an appointment',
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //
        //             ),
        //
        //           ),
        //           const SizedBox(height: 20),
        //           Text(
        //             'Check the list of various doctors and fix an appointment with Them!',
        //             style: TextStyle(
        //               fontSize: 14,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.15,
        //
        //
        //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
        //
        //     ),
        //   ],
        // ),
      ),

    ),
  );
  Widget DSA() =>      GestureDetector(

    onTap: () {
      // Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context)=> data()),
      );

    },
    child: Card(

      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(

        width: MediaQuery.of(context).size.width/2 ,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/img_2.png"),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),

        ),

        // padding: EdgeInsets.all(16),
        // child: Row(
        //   crossAxisAlignment:CrossAxisAlignment.end,
        //   children: [
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.60,
        //
        //       child: Column(
        //
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             'Book an appointment',
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //
        //             ),
        //
        //           ),
        //           const SizedBox(height: 20),
        //           Text(
        //             'Check the list of various doctors and fix an appointment with Them!',
        //             style: TextStyle(
        //               fontSize: 14,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.15,
        //
        //
        //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
        //
        //     ),
        //   ],
        // ),
      ),

    ),
  );
  Widget UI() =>    GestureDetector(
    onTap: () {
      // Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context)=> UIU()),
      );

    },
    child: Card(

      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(

        width: MediaQuery.of(context).size.width/2 ,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/img_24.png"),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),

        ),

        // padding: EdgeInsets.all(16),
        // child: Row(
        //   crossAxisAlignment:CrossAxisAlignment.end,
        //   children: [
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.60,
        //
        //       child: Column(
        //
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             'Book an appointment',
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //
        //             ),
        //
        //           ),
        //           const SizedBox(height: 20),
        //           Text(
        //             'Check the list of various doctors and fix an appointment with Them!',
        //             style: TextStyle(
        //               fontSize: 14,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.15,
        //
        //
        //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
        //
        //     ),
        //   ],
        // ),
      ),

    ),
  );
  Widget OS() =>      GestureDetector(
    onTap: () {
      // Navigator.of(context).pop();
      Navigator.push(context, MaterialPageRoute(
          builder: (BuildContext context)=> sys()),
      );

    },
    child: Card(

      shadowColor: Colors.red,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(

        width: MediaQuery.of(context).size.width/2 ,
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/img_5.png"),
            fit: BoxFit.fill,
            alignment: Alignment.topCenter,
          ),

        ),

        // padding: EdgeInsets.all(16),
        // child: Row(
        //   crossAxisAlignment:CrossAxisAlignment.end,
        //   children: [
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.60,
        //
        //       child: Column(
        //
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text(
        //             'Book an appointment',
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold,
        //
        //             ),
        //
        //           ),
        //           const SizedBox(height: 20),
        //           Text(
        //             'Check the list of various doctors and fix an appointment with Them!',
        //             style: TextStyle(
        //               fontSize: 14,
        //               color: Colors.white,
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width*0.15,
        //
        //
        //       child: Icon(Icons.keyboard_arrow_right,size: 60 ,color: Color.fromRGBO(0, 0, 0, 0.6),),
        //
        //     ),
        //   ],
        // ),
      ),

    ),
  );

}


