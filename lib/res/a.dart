

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';



class A extends StatefulWidget {
  const A({Key? key}) : super(key: key);

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  // finding the same instance of initialized controller



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 3,
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Container(
            color: Colors.deepPurple,
            child: Text('APP DEVELOPMENT',style: TextStyle(color: Colors.black),),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.deepPurple,
            tabs: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('FLUTTER DART'),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('KOTLIN'),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text('SWIFT'),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.black,
          child: TabBarView(

            children: <Widget>[
              // _FLUTTER(),
              _flut(),
              _kot(),
              _swi(),

            ],
          ),
        ),
      ),
    );

  }


  Widget _flut() =>     Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      SizedBox(
        height: 13,
      ),
      Container(
        margin: EdgeInsets.only(left: 10),
        child: Text("Github link:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
      ),

      Container(
        margin: EdgeInsets.only(left: 10),
        child: RichText(text: TextSpan(
            text: "https://github.com/londonappbrewery/Flutter-Course-Resources",
            style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap=(){ launch("https://github.com/londonappbrewery/Flutter-Course-Resources");
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
        height: 13,
      ),
      Container( margin: EdgeInsets.only(left: 10),
        child: RichText(text: TextSpan(
            text: "Udacity - Build Native Mobile Apps With Flutter",
            style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap=(){ launch("https://www.udacity.com/course/build-native-mobile-apps-with-flutter--ud905");
              }
        ),

        ),
      ),
      SizedBox(
        height: 13,
      ),
      Container(margin: EdgeInsets.only(left: 10),
        child: RichText(text: TextSpan(
            text: " Udemy - Learn Flutter Begginers Course",
            style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap=(){ launch("https://www.udemy.com/course/learn-flutter-beginners-course/");
              }
        ),

        ),
      ),
      SizedBox(
        height: 16,
      ),
      Container(
        margin: EdgeInsets.only(left: 10),
        child: Text("Paid Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
      ),
      SizedBox(
        height: 13,
      ),
      Container(margin: EdgeInsets.only(left: 10),
        child: RichText(text: TextSpan(
            text: " Udemy - Learn Flutter & Dart to Build iOS & Android Apps",
            style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap=(){ launch("https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/");
              }
        ),

        ),
      ),
      SizedBox(
        height: 13,
      ),
      Container(margin: EdgeInsets.only(left: 10),
        child: RichText(text: TextSpan(
            text: "Udemy - The Complete 2020 Flutter Development Bootcamp with Dart",
            style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap=(){ launch("https://www.udemy.com/course/flutter-bootcamp-with-dart//");
              }
        ),

        ),
      ),
      SizedBox(
        height: 13,
      ),
      Container(margin: EdgeInsets.only(left: 10),
        child: RichText(text: TextSpan(
            text: "Udemy - Flutter & Firebase: Build a Complete App for iOS & Android",
            style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap=(){ launch("https://www.udemy.com/course/flutter-firebase-build-a-complete-app-for-ios-android/");
              }
        ),

        ),
      ),
    ],
  );



  Widget _kot(){
    return Column(
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
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "https://github.com/mcxiaoke/awesome-kotlin#tutorials",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://github.com/mcxiaoke/awesome-kotlin#tutorials");
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
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udemy - One hour Kotlin guide for beginners",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/one-hour-kotlin-guide-for-beginners/");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udacity - Developing Android Apps with Kotlin",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udacity.com/course/developing-android-apps-with-kotlin--ud9012");
                }
          ),

          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text("Paid Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udemy - Kotlin for Android & Java Developers: Clean Code on Android",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/kotlin-android/");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udemy - Kotlin Coroutines for Android Masterclass",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/kotlin-coroutines-in-android/");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udemy - Kotlin for Beginners: Learn Programming With Kotlin",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/kotlin-course/");
                }
          ),

          ),
        ),
      ],
    );

  }
  Widget _swi(){
    return Column(
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
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "https://github.com/matteocrippa/awesome-swift",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://github.com/matteocrippa/awesome-swift");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "https://github.com/diwu/LeetCode-Solutions-in-Swift",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://github.com/diwu/LeetCode-Solutions-in-Swift");
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
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udacity - Swift for Developers",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udacity.com/course/swift-for-developers--ud1025");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udemy - How To Make An App For Beginners (iOS/Swift - 2019)",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/how-to-make-an-app-for-beginners-iosswift-2019/");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udemy - Introduction to iOS 11 Development: Swift 4 and Xcode 9",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/ios11development/");
                }
          ),

          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text("Paid Courses:", style: TextStyle(color: Colors.deepPurple, fontSize: 25),),
        ), SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: " Udemy - Kotlin for Android & Java Developers: Clean Code on Android",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/kotlin-android/");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udemy - Kotlin Coroutines for Android Masterclass",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/kotlin-coroutines-in-android/");
                }
          ),

          ),
        ),
        SizedBox(
          height: 13,
        ),
        Container(margin: EdgeInsets.only(left: 10),
          child: RichText(text: TextSpan(
              text: "Udemy - Kotlin for Beginners: Learn Programming With Kotlin",
              style: TextStyle(color: Colors.green,decoration: TextDecoration.underline,fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap=(){ launch("https://www.udemy.com/course/kotlin-course/");
                }
          ),

          ),
        ),
      ],
    );

  }

}
// class Rating10Controller extends GetxController {
//   int currentRating = 0;
//   final box = GetStorage();
//
//   @override
//   void onInit() { // called whenever we initialize the controller
//     super.onInit();
//     currentRating = box.read('rating') ?? 0; // initializing current rating from storage or 0 if storage is null
//   }
//
//   void updateAndStoreRating(int rating) {
//     currentRating = rating;
//     box.write('rating', rating); // stores to local database
//     update(); // triggers a rebuild of the GetBuilder Widget
//   }
//
//   Widget buildRatingStar(int index) {
//     if (index < currentRating) {
//       return Icon(
//         Icons.star,
//         color: Colors.yellow,
//       );
//     } else {
//       return Icon(
//         Icons.star,
//         color: Colors.white,
//       );
//     }
//   }
// }
