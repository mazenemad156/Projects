import 'package:flutter/material.dart';
import 'package:loginscreen/models/post_model.dart';
import 'package:loginscreen/widgets/reactions_container.dart';


class PostWidget extends StatefulWidget {
  final PostModel postModel;
  PostWidget({required this.postModel});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage(widget.postModel.image!)),
            title: Text(
              widget.postModel.username!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.postModel.date!),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.postModel.text!, style: TextStyle(fontSize: 18)),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.postModel.totalLikes.toString(), style: TextStyle(fontSize: 13)),
          ),
          SizedBox(height: 8),
          Divider(),
          ReactionsWidget()
        ],
      ),
    );
  }
}


