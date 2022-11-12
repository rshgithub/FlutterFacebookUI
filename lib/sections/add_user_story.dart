import 'package:flutter/material.dart';
import 'package:ft_facebook_ui/Models/user_model.dart';

class AddUserStory extends StatelessWidget {
  UserModel user;

  AddUserStory(this.user);

  @override
  Widget build(BuildContext context) {
    return addUserStoryButton(user.image!);
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
