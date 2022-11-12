import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FaceAppBar extends StatelessWidget with PreferredSizeWidget {
  const FaceAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Facebook",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 40),
        ),
        centerTitle: false,
        actions: [
          Row(
            children: [
              myIconButton(
                  const Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                  ),
                  "pressed"),
              SizedBox(
                width: 10,
              ),
              myIconButton(
                  const Icon(
                    Icons.message,
                    color: Colors.blue,
                  ),
                  "pressed"),
              SizedBox(
                width: 10,
              ),
              myIconButton(
                  Image.asset(
                    "assets/images/menus.png",
                    fit: BoxFit.cover,
                    height: 20,
                    width: 20,
                  ),
                  "pressed"),
              SizedBox(
                width: 10
              ),
            ],
          )
        ]);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}

Widget myIconButton(Widget icon, String pressText) {
  return IconButton(
    iconSize: 20,
    icon: icon,
    onPressed: () {
      print(pressText);
    },
  );
}
