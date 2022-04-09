import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
class D extends StatefulWidget {
  const D({Key? key}) : super(key: key);

  @override
  State<D> createState() => _DState();
}

class _DState extends State<D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("DSA",style: TextStyle(color: Colors.black),),
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
                text: "https://github.com/DSC-KIIT/DSA-Resources",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://github.com/DSC-KIIT/DSA-Resources");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "450 DSA",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://drive.google.com/file/d/1FMdN_OCfOI0iAeDlqswCiC2DZzD4nPsb/view");
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
                text: "Udacity - Intro to Data Structures and Algorithms",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udacity.com/course/data-structures-and-algorithms-in-python--ud513");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: " Udemy - Data Structures : Binary Tree Animations and Implementations",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/data-structures-algorithms-java/");
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
                text: " GFG - Data Structures and Algorithms - Self Paced",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://practice.geeksforgeeks.org/courses/dsa-self-paced?source=google&medium=cpc&device=c&keyword=data%20structures%20interview%20questions&matchtype=b&campaignid=9546568041&adgroup=97966155295&gclid=Cj0KCQjwl7qSBhD-ARIsACvV1X1TVQEsksY6oubz5A4vRAmF3w1hex4o8d-ILmt18fwTGiPIk9tUVx8aAsXYEALw_wcB");
                  }
            ),

            ),
          ),SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "Coursera - Data Structures and Algorithms Specialization",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.coursera.org/specializations/data-structures-algorithms");
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
