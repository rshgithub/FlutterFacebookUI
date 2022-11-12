import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FollowersStories extends StatelessWidget {
  String userImage, storyImage;
  FollowersStories(this.userImage, this.storyImage);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: storyCell(userImage, storyImage),
    );
  }

  Widget storyCell(String userImage, String storyImage) {
    return GestureDetector(
      onTap: () {
        print("Story Tapped");
      },
      child: Container(
            margin: EdgeInsets.all(10),
            child: SizedBox(
              height: 60,
              width: 60,
              child: Stack(
                clipBehavior: Clip.none,
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      storyImage,
                    ),
                  ),
                  Positioned(
                      bottom: 40,
                      left: 30,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 2, color: Colors.white),
                        ),
                        child: Image.network(userImage,
                            width: 25, height: 25, fit: BoxFit.cover),
                      )),
                ],
              ),
            ),
      ),
    );
  }
}
