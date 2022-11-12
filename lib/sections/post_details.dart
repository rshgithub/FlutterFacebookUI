import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ft_facebook_ui/sections/stacked_images.dart';

class PostDetails extends StatelessWidget {
  String reactionsCount;

  int comments, shares;

  PostDetails(
    this.reactionsCount,
    this.comments,
    this.shares,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          reactions(),
          commentsAndShares(comments, shares),
        ],
      ),
    );
  }

  Widget reactions() {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 20,
          child: Image.asset(
            'assets/images/reactions.png',
            fit: BoxFit.fill,
          ),
        ),

        const SizedBox(
          width: 10,
        ),

        Text(
          reactionsCount,
          style: const TextStyle(
              fontSize: 16,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget commentsAndShares(int comments, int shares) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Text(
          "$comments comments | $shares shares",
          style: const TextStyle(
              fontSize: 16,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
