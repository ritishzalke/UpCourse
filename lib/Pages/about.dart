import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(iconTheme: IconThemeData( color: Colors.black,),
        title: Text("About Us",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:EdgeInsets.all(20)
            ,child: Text("About UpCourse",style: TextStyle(color: Colors.deepPurple,fontSize: 40),),
          ),
          Container(
            padding:EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Text("UpCourse is a tutorial app which helps user learn skills in different domains like app dev, web dev etc. The app provides top courses of variety of domains from the youtube platform.\nBecause technology is constantly being updated, YouTube serves as a platform for these updates to reach a large audience.A lot of people can't afford paid courses on various Edtech platforms like Coursera, Udemy, etc. So UpCourse provides the students with all the top youtube courses of different domains including their study material at one platform and  free of cost. In this way the students can use only one platform to study their favourite domain saving their time and money!",
              style: TextStyle(color: Colors.green,fontSize: 15),),
          ),
          SizedBox(height: 30 ,),
          Center(
            child: Container(
              child: Text("Follow me on:",style: TextStyle(color: Colors.deepPurple,fontSize: 30),),
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: GestureDetector( onTap: () => launch(
              //       "https://www.linkedin.com/in/ritish-zalke-82a681222/"),
              //       child: Icon(FontAwesomeIcons.instagram, color: Colors.green, size: 26.0)),
              //
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () => launch(
                        "https://github.com/ritishzalke"),
                    child: Icon(FontAwesomeIcons.github, color: Colors.green, size: 26.0)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    child: Icon(FontAwesomeIcons.linkedin, color: Colors.green, size: 26.0),
                  onTap: () => launch(
                      "https://www.linkedin.com/in/ritish-zalke-82a681222/"),
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}
