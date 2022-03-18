import 'package:flutter/material.dart';

class ReactionsWidget extends StatelessWidget {
  const ReactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              label: Text('Like'),
              icon: Icon(Icons.thumb_up),
              onPressed: () {},
            ),

            TextButton.icon(
              label: Text('Comment'),
              icon: Icon(Icons.comment_rounded),
              onPressed: () {},
            ),

            TextButton.icon(
              label: Text('Share'),
              icon: Icon(Icons.share),
              onPressed: () {},
            ),

          ],
        ),
      ),
    );

  }
}
