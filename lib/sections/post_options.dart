import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostOptions extends StatelessWidget {
  const PostOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          TextButton.icon(
            // <-- TextButton
            onPressed: () {
              print("like");
            },
            icon: Image.asset(
              'assets/images/like.png',
              width: 25,
            ),
            label: Text(
              'Like',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            // <-- TextButton
            onPressed: () {
              print("Comment");
            },
            icon: Image.asset(
              'assets/images/chat-balloon.png',
              width: 25,
            ),
            label: Text(
              'Comment',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          TextButton.icon(
            // <-- TextButton
            onPressed: () {
              print("Share");
            },
            icon: Image.asset(
              'assets/images/share.png',
              width: 25,
            ),
            label: Text(
              'Share',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
