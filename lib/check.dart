

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upcourse/main.dart';
class Check extends StatefulWidget {


  @override
  _CheckState createState() => _CheckState();
}

class _CheckState extends State<Check> {


  // bool check = false;
  // bool check2 = false;
  // bool check3 = false;
  bool _checkboxValue = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3 = false;

  //
  // void _showCupertinoDialog(String title) {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return StatefulBuilder(builder: (context, setState) {
  //           return AlertDialog(
  //             title: Text('Hangi çizgi film favorin?'),
  //             content: Container(
  //               height: 250,
  //               child: Column(
  //
  //                 children: <Widget>[
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: <Widget>[
  //
  //                       Text("Ay Savaşçısı"),
  //
  //                       Checkbox(
  //                         autofocus: false,
  //                         value: check,
  //                         checkColor: Colors.white,
  //                         focusColor: Colors.pinkAccent,
  //                         activeColor: Colors.greenAccent,
  //                         onChanged: (bool? value){
  //
  //                           setState(() {
  //                             check = value??false;
  //
  //                             _savenswitchValue();
  //                           });
  //                         },
  //                       ),
  //
  //                     ],
  //                   ),
  //
  //
  //
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: <Widget>[
  //                       Text("Powerpuff Girls"),
  //
  //                       Checkbox(
  //                         autofocus: false,
  //                         value: check2,
  //                         checkColor: Colors.white,
  //                         focusColor: Colors.pinkAccent,
  //                         activeColor: Colors.greenAccent,
  //                         onChanged: (bool? value){
  //
  //                           setState(() {
  //                             check2 = value??false;
  //
  //                             _savenswitchValue();
  //                           });
  //                         },
  //                       ),
  //                     ],
  //                   ),
  //
  //
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: <Widget>[
  //                       Text("Şaşkın İmparator"),
  //
  //                       Checkbox(
  //                         focusNode: FocusNode(),
  //                         autofocus: false,
  //                         value: check3,
  //                         checkColor: Colors.white,
  //                         focusColor: Colors.pinkAccent,
  //                         activeColor: Colors.greenAccent,
  //                         onChanged: (bool? value){
  //
  //                           setState(() {
  //                             check3 = value??false;
  //
  //                             _savenswitchValue();
  //                           });
  //                         },
  //                       ),
  //
  //                     ],
  //                   )
  //
  //
  //
  //                 ],
  //               ),
  //             ),
  //             actions: <Widget>[
  //
  //               new FlatButton(
  //                 child: new Text('Tamam'),
  //                 onPressed: () {
  //
  //                   Navigator.of(context).pop();
  //                 },
  //               ),
  //             ],
  //           );
  //         });
  //       });
  // }
  //



  void initState() {
    super.initState();

    _loadswitchValue();
  }


  _loadswitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {

      // check = (prefs.getBool('moon')) ?? false;
      // check2 = (prefs.getBool('powerpuff')) ?? false;
      // check3 = (prefs.getBool('imparator')) ?? false;

      _checkboxValue = (prefs.getBool('1')) ?? false;
      _checkboxValue2 = (prefs.getBool('2')) ?? false;
      _checkboxValue3 = (prefs.getBool('3')) ?? false;
    });
  }

  savenswitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {

      prefs.setBool('1', _checkboxValue);
      prefs.setBool('2', _checkboxValue2);
      prefs.setBool('3', _checkboxValue3);
      // prefs.setBool('moon', check);
      // prefs.setBool('powerpuff', check2);
      // prefs.setBool('imparator', check3);
    });
  }




  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Checkbox(

                          value: _checkboxValue,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkboxValue = value??false;

                              savenswitchValue();
                            });
                          }
                      ),



                      Checkbox(

                          value: _checkboxValue2,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkboxValue2 = value??false;

                              savenswitchValue();
                            });
                          }
                      ),

                      Checkbox(

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


                _getPage(_checkboxValue || _checkboxValue2 || _checkboxValue3),






              ]
          ),
        ),


    );
  }


  _getPage(bool page) {

    switch(page) {
      case true:
        return Column(
          children: <Widget>[

            ElevatedButton(onPressed: () {  Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context)=> MyHomePage(title: "hello")),
            ); },
              child: Text("submit"),

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

}
