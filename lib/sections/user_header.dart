import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/user_model.dart';

class UserHeader extends StatelessWidget {

  UserModel user;
  UserHeader(this.user);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(user.image!)),

          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name??'',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                user.timeFrom??'now',
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          ( user.isVerified??false)?Image.asset( 'images/quality.png', width: 20,) :const SizedBox(),

          const SizedBox(),
          const Spacer(),
          const Icon(
            Icons.more_horiz,
            color: Colors.grey,
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
