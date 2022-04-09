

import 'package:flutter/material.dart';
import 'package:upcourse/res/a.dart';
import 'package:upcourse/res/u.dart';
import 'package:upcourse/res/w.dart';

import 'd.dart';
import 'g.dart';
import 'o.dart';
class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:Text("Resources") ,
      ),backgroundColor: Colors.red,
      body:ListView(
        children: [
          // new UserAccountsDrawerHeader(
          //   accountName: Text('Ritish'),
          //   accountEmail: Text('ricjjcd@gmail.com'),
          //   currentAccountPicture: const CircleAvatar(
          //     backgroundImage: NetworkImage('https://images.squarespace-cdn.com/content/v1/5824673c2e69cfc8ac1e3cd3/1580377764933-1L0AVRF4MU86B18J3S4A/Picture+of+woodlands+taken+on+iphone+using+natural+light'),
          //   ) ,
          // ),

          ListTile(
            title: Text("APP DEVELOPMENT"),
            onTap: (){

              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> A()
              ),

              );
            },
            // onTap: (){
            //   // Navigator.of(context).pop();
            //   Navigator.push(context, MaterialPageRoute(
            //     builder: (BuildContext context)=> MyHomePage(),
            //   ),
            //
            //   );
            // },
          ),
          new Divider(),
          ListTile(
            title: Text("WEB DEVEOPMENT"),
            onTap: (){

              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> W()
              ),

              );
            },
          ),
          new Divider(),
          ListTile(
            title: Text("GAME DEVELOPMENT"),
            onTap: (){

              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context)=> G(),
              ),

              );
            },
          ),
          // new Divider(),
          // ListTile(
          //   title: Text("Medicine reminder"),
          //   onTap: (){
          //     Navigator.of(context).pop();
          //     Navigator.push(context, MaterialPageRoute(
          //       builder: (BuildContext context)=> Reminder(),
          //     ),
          //
          //     );
          //   },
          // ),
          new Divider(),
          ListTile(
            title: Text("UI/UX"),
            onTap: (){

              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context)=> U()
              ),

              );
            },
          ),


          new Divider(),
          ListTile(
            title: Text("OPERATING SYSTEMS"),
            onTap: (){
              // Navigator.of(context).pop();
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context)=> new O()
              ),

              );
            },
          ),

          new Divider(),
          ListTile(
            title: Text("DSA"),
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (BuildContext context)=> new D()
              ),

              );
            },
          ),
          // ListTile(
          //   title: Text("DSA"),
          //   // onTap: (){
          //   //   // Navigator.of(context).pop();
          //   //   showDialog(context: context, builder: (ctx){
          //   //     return AlertDialog(
          //   //       title: Text('Confirmation !!!'),
          //   //       content: Text('Are you sure to Log Out ? '),
          //   //       actions: [
          //   //
          //   //         TextButton(onPressed: (){
          //   //
          //   //           Navigator.of(ctx).pop();
          //   //
          //   //         }, child: Text('No'),),
          //   //
          //   //
          //   //         TextButton(onPressed: (){
          //   //           Navigator.of(ctx).pop();
          //   //
          //   //           FirebaseAuth.instance.signOut();
          //   //
          //   //           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
          //   //             return  LoginScreen();
          //   //           }));
          //   //
          //   //         }, child: Text('Yes'),),
          //   //
          //   //       ],
          //   //     );
          //   //   }
          //   //   );
          //   // },
          // ),
        ],
      ),
    );
  }
}
