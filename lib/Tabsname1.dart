import 'package:flutter/material.dart';
import 'Tabs.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CategoryCard(

                'FLUTTER DART'
            ),
            CategoryCard(

                'KOTLIN'
            ),
            CategoryCard(

                'SWIFT'
            ),
            // CategoryCard(
            //     Icon(Icons.videocam, size: 40,),
            //     'Movies'
            // ),
            // CategoryCard(
            //     Icon(Icons.watch, size: 40,),
            //     'Watches'
            // ),
            // CategoryCard(
            //     Icon(Icons.weekend, size: 40,),
            //     'Furniture'
            // ),
          ],
        ),
      ),
    );
  }
}