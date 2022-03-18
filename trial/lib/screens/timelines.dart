
import 'package:flutter/material.dart';
import 'package:loginscreen/helpers/network.dart';
import 'package:loginscreen/widgets/post_widget.dart';

import '../models/post_model.dart';

class Posts extends StatefulWidget {
  final String username;
  const Posts({Key? key, required this.username}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<PostModel>? listOfPosts;
  Future<List<dynamic>?>? _secondListOfPosts;

  @override
  void initState() {
    super.initState();
    listOfPosts  = [
      PostModel(
        text: 'Hello World, I am Youssef',
        image: 'https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=20&m=1179420343&s=612x612&w=0&h=G2UGMVSzAXGAQs3pFZpvWlHNRAzwPIWIVtSOxZHsEuc=',
        date: '7 min ago',
        totalLikes: 13,
        username: 'Youssef',
      ),
      PostModel(
        text: 'Hello World, I am Mohamed',
        image:
        'https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=20&m=1179420343&s=612x612&w=0&h=G2UGMVSzAXGAQs3pFZpvWlHNRAzwPIWIVtSOxZHsEuc=',
        date: '15 min ago',
        totalLikes: 13,
        username: 'Mohamed',
      ),
      PostModel(
        text: 'Hello World, I am Ahmed',
        image:
        'https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=20&m=1179420343&s=612x612&w=0&h=G2UGMVSzAXGAQs3pFZpvWlHNRAzwPIWIVtSOxZHsEuc=',
        date: '20 min ago',
        totalLikes: 13,
        username: 'Ahmed',
      ),
      PostModel(
        text: 'Hello World, I am Ahmed',
        image:
        'https://media.istockphoto.com/photos/smiling-man-outdoors-in-the-city-picture-id1179420343?k=20&m=1179420343&s=612x612&w=0&h=G2UGMVSzAXGAQs3pFZpvWlHNRAzwPIWIVtSOxZHsEuc=',
        date: '20 min ago',
        totalLikes: 13,
        username: 'Ahmed',
      ),
    ];

    _secondListOfPosts = getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Hello, ${widget.username}"),
          ),
          body: ListView.builder(
              itemCount: listOfPosts!.length,
              itemBuilder: (_, index) {
            return PostWidget(postModel: listOfPosts![index]);
          })),


    );
  }
}
