
import 'package:flutter/material.dart';
import 'package:ft_facebook_ui/Models/story_model.dart';

class FollowersStories extends StatelessWidget {
  StoryModel story;
  FollowersStories( this.story);

  @override
  Widget build(BuildContext context) {
    return  storyCell(story.user_image!, story.story_image!);
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(userImage,
                              width: 25, height: 25, fit: BoxFit.cover),
                        ),
                      )),
                ],
              ),
            ),
      ),
    );
  }
}
