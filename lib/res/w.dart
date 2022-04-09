
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
class W extends StatefulWidget {
  const W({Key? key}) : super(key: key);

  @override
  State<W> createState() => _WState();
}

class _WState extends State<W> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("WEB DEVELOPMENT",style: TextStyle(color: Colors.black)
          ,),
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
        Container( margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "https://github.com/MilanAryal/web-development-resources",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://github.com/MilanAryal/web-development-resources");
                }
          ),

          ),
        ),SizedBox(
          height: 13,
        ),
        Container( margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "https://github.com/iamismile/web-dev-resources",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://github.com/iamismile/web-dev-resources");
                }
          ),

          ),
        ),SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(" Free Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
        ),SizedBox(
          height: 16,
        ),
        Container( margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udacity - Intro to HTML and CSS",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udacity.com/course/intro-to-html-and-css--ud001");
                }
          ),

          ),
        ),SizedBox(
          height: 13,
        ),
        Container( margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udemy - Intro to Node JS & Express",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/intro-to-node-js-express/");
                }
          ),

          ),
        ),SizedBox(
          height: 13,
        ),
        Container( margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udemy - Build a Quiz App with HTML, CSS, and JavaScript",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/build-a-quiz-app-with-html-css-and-javascript/");
                }
          ),

          ),
        ),SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text("Paid Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
        ),SizedBox(
          height: 16,
        ),
        Container( margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udemy - Become a Web Developer from Scratch",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/how-to-become-a-web-developer-from-scratch/");
                }
          ),

          ),
        ),SizedBox(
          height: 13,
        ),
        Container( margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udemy - The Complete 2020 Fullstack Web Developer Course",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/thecompletewebdeveloper/");
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
