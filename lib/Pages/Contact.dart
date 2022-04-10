import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';



class Send extends StatefulWidget {
  @override
  _SendState createState() => _SendState();
}

class _SendState extends State<Send> {
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController = TextEditingController(
    text: 'ritishzalke@gmail.com',
  );

  final _subjectController = TextEditingController(text: 'The subject');

  final _bodyController = TextEditingController(
    text: 'Mail body.',
  );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
      isHTML: isHTML,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(platformResponse),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

        key: _scaffoldKey,
        appBar: AppBar(backgroundColor: Colors.deepPurple,
          iconTheme: IconThemeData( color: Colors.black,),
          title: Text('Contact Us',style: TextStyle(color: Colors.black),),
          actions: <Widget>[
            IconButton(
              onPressed: send,
              icon: Icon(Icons.send,color: Colors.black,),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(style: TextStyle(color: Colors.green),
                  controller: _recipientController,
                  decoration: InputDecoration(iconColor: Colors.green,
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid,color: Colors.green)),
                    labelText: 'Recipient',labelStyle: TextStyle(color: Colors.green)
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(style: TextStyle(color: Colors.green),
                  controller: _subjectController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                    labelStyle: TextStyle(color: Colors.green),
                    labelText: 'Subject',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(style: TextStyle(color: Colors.green),
                    controller: _bodyController,
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                        labelText: 'Body',
                        labelStyle: TextStyle(color: Colors.green),enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green))),
                  ),
                ),
              ),
              // CheckboxListTile(
              //   contentPadding:
              //   EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
              //   title: Text('HTML'),
              //   onChanged: (bool? value) {
              //     setState(() {
              //       isHTML = value??false;
              //     });
              //   },
              //   value: isHTML,
              // ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Wrap(
                  children: <Widget>[
                    for (var i = 0; i < attachments.length; i++)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                              flex: 0,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 100,
                                height: 100,
                                child: Image.file(File(attachments[i]),
                                    fit: BoxFit.cover),
                              )),
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () => {_removeAttachment(i)},
                          )
                        ],
                      ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        icon: Icon(Icons.attach_file,color: Colors.green,),
                        onPressed: _openImagePicker,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

    );
  }

  Future _openImagePicker() async {
    final pick = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pick != null) {
      setState(() {
        attachments.add(pick.path);
      });
    }
  }

  void _removeAttachment(int index) {
    setState(() {
      attachments.removeAt(index);
    });
  }
}