import 'dart:ui';
import 'package:e_learning_trial_app/model/Category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new Container(
                    child: new Image.asset(
                      'assets/images/10.png',
                      height: 40.0,
                      width: 30.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  new Container(
                    child: new Image.asset(
                      'assets/images/15.png',
                      height: 60.0,
                      width: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "مرحبا مازن",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "ابحث عن الكورس الذي تريد تعلمه",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F5F7),
                    borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: [
                    Image.asset('assets/images/20.png'),
                    SizedBox(height: 16),
                    Text(
                      "      البحث      ",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(
                    "فئه",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "عرض الكل",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,

                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 1,
                    itemCount: categories.length,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        height: index.isEven ? 100 : 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.indigoAccent,
                          image: DecorationImage(
                            image: AssetImage(categories[index].images.toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              categories[index].name.toString(),
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w200,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              categories[index].courses.toString(),
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w200,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1),
                  ))
            ])));
  }
}

