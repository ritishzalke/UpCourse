import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
class G extends StatefulWidget {
  const G({Key? key}) : super(key: key);

  @override
  State<G> createState() => _GState();
}

class _GState extends State<G> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(iconTheme: IconThemeData( color: Colors.black,),
        title: Text("GAME DEVELOPMENT",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text("Github link:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
          ),
          SizedBox(
            height: 16,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "https://github.com/Kavex/GameDev-Resources",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://github.com/Kavex/GameDev-Resources");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "https://github.com/Calinou/awesome-gamedev",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://github.com/Calinou/awesome-gamedev");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(" Free Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "Udemy - Introduction to Game Development with Unity",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/introduction-to-game-development-with-unity/");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: " Udemy - Game Development Crash Course w/Solar2D: Fast and EASY!",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/game-development-crash-course/");
                  }
            ),

            ),
          ),
          // RichText(text: TextSpan(
          //     text: " Udemy - Build a Quiz App with HTML, CSS, and JavaScript",
          //     style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 18),
          //     recognizer: TapGestureRecognizer()
          //       ..onTap=(){ launch("https://www.udemy.com/course/build-a-quiz-app-with-html-css-and-javascript/");
          //       }
          // ),
          //
          // ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text("Paid Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
          ),
          SizedBox(
            height: 16,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: " Udemy - Complete C# Unity Game Developer 2D",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/unitycourse/");
                  }
            ),

            ),
          ),SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "Udemy - Unreal Engine 5: The Complete Beginner's Course",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/unreal-engine-5-the-complete-beginners-course/");
                  }
            ),

            ),
          ),
          // RichText(text: TextSpan(
          //     text: "Udemy - Kotlin for Beginners: Learn Programming With Kotlin",
          //     style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 18),
          //     recognizer: TapGestureRecognizer()
          //       ..onTap=(){ launch("https://www.udemy.com/course/kotlin-course/");
          //       }
          // ),
          //
          // ),
        ],
      ),
    );
  }
}
