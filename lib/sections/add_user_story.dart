import 'package:flutter/material.dart';

class AddUserStory extends StatelessWidget {
  String mainUserImage;

  AddUserStory(this.mainUserImage);

  @override
  Widget build(BuildContext context) {
    return addUserStoryButton(mainUserImage);
  }

  Widget addUserStoryContainer(String mainUserImage) {
    return SizedBox(
      height: 60,
      width: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
              child: CircleAvatar(
                  radius: 30.0, backgroundImage: NetworkImage(mainUserImage)),
            ),
          ),
          const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget addUserStoryButton(String mainUserImage) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
        ),
        onPressed: () {
          print("user button pressed");
        },
        child: Container(
          decoration:
              BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),
          child: addUserStoryContainer(mainUserImage),
        ));
  }
}
