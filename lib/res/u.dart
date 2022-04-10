import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
class U extends StatefulWidget {
  const U({Key? key}) : super(key: key);

  @override
  State<U> createState() => _UState();
}

class _UState extends State<U> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(iconTheme: IconThemeData( color: Colors.black,),
        title: Text("UI/UX",style: TextStyle(color: Colors.black),),
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
                text: "https://gist.github.com/teybannerman/9c234424eb1d940a8505",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://gist.github.com/teybannerman/9c234424eb1d940a8505");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "https://github.com/hendurhance/ui-ux",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://github.com/hendurhance/ui-ux");
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
                text: "COURSERA - Introduction to User Experience Designy",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.coursera.org/learn/user-experience-design");
                  }
            ),

            ),
          ),SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: "Udemy - User Experience (UX) Fundamentals",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/introtoux/");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 16,
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
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text("Paid Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
          ),
          SizedBox(
            height: 16,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: " Udemy - The Complete App Design Course - UX, UI and Design Thinking",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/the-complete-app-design-course-ux-and-ui-design/?utm_source=adwords&utm_medium=udemyads&utm_campaign=LongTail_la.EN_cc.INDIA&utm_content=deal4584&utm_term=_._ag_77882236703_._ad_533093955816_._kw__._de_c_._dm__._pl__._ti_dsa-1007766171592_._li_9040246_._pd__._&matchtype=&gclid=CjwKCAjwur-SBhB6EiwA5sKtjgI8NJ7hi_OcNuHGIU7l2Oixr9fEwvi5jrYC5w2-bn-Bu4vtUZSd-hoChA8QAvD_BwE");
                  }
            ),

            ),
          ),
          SizedBox(
            height: 13,
          ),
          Container(margin: EdgeInsets.only(left: 10),
            child: RichText(text: TextSpan(
                text: " Udemy - User Experience (UX): The Ultimate Guide to Usability and UX",
                style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap=(){ launch("https://www.udemy.com/course/ultimate-guide-to-ux/");
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
