// ignore_for_file: file_names, prefer_const_constructors

import 'dart:ui';
import 'package:e_learning_trial_app/Pages/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          body: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage("assets/images/download.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Flexible( flex:3 ,
                    child: Text(
                      'تعلم كل شي من الصفر عبر منصتنا',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, height: 1, fontSize: 33),
                      maxLines: 2,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Text(
                      "لوريم ايبسم لبعاالاتلرنتنر ااتنتمت  ااتتت  هىىتى اةنمنتاا بلبتا لاتلال رتبب اتنعنت اهغهان تنلللنتاتا البقغللا انمىلاى اتمتن اممنملالاى",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff262626),
                          fontWeight: FontWeight.w100),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Positioned(
                      bottom: 50,
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 0.0,
                        ),
                        label: Text('ابدا الان'),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SignUp();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(450, 80),
                          primary: Colors.deepOrange,
                          alignment: Alignment.centerRight,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
