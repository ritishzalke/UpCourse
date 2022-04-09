import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
class O extends StatefulWidget {
  const O({Key? key}) : super(key: key);

  @override
  State<O> createState() => _OState();
}

class _OState extends State<O> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("OPERATING SYSTEMS",style: TextStyle(color: Colors.black),),
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
                text: "https://github.com/CodeChefVIT/resources/blob/master/OperatingSystems/OPERATING-SYSTEMS.md",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://github.com/CodeChefVIT/resources/blob/master/OperatingSystems/OPERATING-SYSTEMS.md");
                  }
            ),

            ),
          ),SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "https://whimsical.com/operating-system-cheatsheet-by-love-babbar-S9tuWBCSQfzoBRF5EDNinQ",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://whimsical.com/operating-system-cheatsheet-by-love-babbar-S9tuWBCSQfzoBRF5EDNinQ");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(" Free Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
          ),
          SizedBox(
            height: 16,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "Udemy - Introduction to Game Development with Unity",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://drive.google.com/file/d/1FAxjhyIlsGGouIyCPyR3xqKVgU7mhEmQ/view");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: " Udacity - Introduction to Operating Systems",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udacity.com/course/introduction-to-operating-systems--ud923");
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
                text: "Coursera - Introduction to Operating Systems Specialization",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.coursera.org/specializations/codio-introduction-operating-systems");
                  }
            ),

            ),
          ),
          SizedBox(
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
