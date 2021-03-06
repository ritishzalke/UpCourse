

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../login/screens/login_screen.dart';
import '../main.dart';
class Splash extends StatefulWidget {
  // const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateHome();
  }
  _navigateHome()async{
    await Future.delayed(Duration(milliseconds: 3000),(){
      Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context)=>
      FirebaseAuth.instance.currentUser == null
          ? LoginScreen()
          :  MyHomePage(title: 'home',),
      )
      );
    });
  }
  // var s="Diagno";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(

                  'UpCourse',textStyle: const TextStyle(
                  fontSize: 44.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),


                ),


              ],
              onTap: (){},
            ),
            // Text("DIAGNO",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44,color: Colors.blue),),
            // Text("+",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.red),)
          ]
          ),
        ),
      );


  }
}
