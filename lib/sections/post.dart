import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  get sectionName => null;

  String text, image, hashtag;

  Post(
    this.text,
    this.image,
    this.hashtag,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            hashtag,
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.network(
            image,
            fit: BoxFit.cover,
            height: 500,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
