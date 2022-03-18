
// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'MainPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'E Learning',
        home: Scaffold(
            backgroundColor: Colors.purple,
            appBar: AppBar(
              shadowColor: Colors.purple,
              backgroundColor: Colors.purple,
            ),
            body: Column(children: [
              InkWell(
                onDoubleTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ( context) {
                        return const MainPage();
                      }));
                },
                child: const Center(
                  child: Text(
                    'E-Learning ',
                    textAlign: TextAlign.center,
                    textScaleFactor: (4),
                  ),
                ),
              )
            ])));
  }
}
