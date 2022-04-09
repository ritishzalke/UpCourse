import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final String name;

  CategoryCard(this.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: Colors.deepPurple
            )
          ],
        ),
        width: 100,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[

              SizedBox(height: 10,),
              Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.deepPurple,decoration: TextDecoration.none ))
            ],
          ),
        ),
      ),
    );
  }
}