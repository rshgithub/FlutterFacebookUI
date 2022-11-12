import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ft_facebook_ui/Models/post_model.dart';
import 'package:ft_facebook_ui/sections/post.dart';
import 'package:ft_facebook_ui/sections/post_details.dart';
import 'package:ft_facebook_ui/sections/post_options.dart';
import 'package:ft_facebook_ui/sections/user_header.dart';

import '../Models/user_model.dart';

class PostBody extends StatelessWidget {
  get sectionName => null;


  PostModel post ;
  PostBody(this.post);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserHeader(UserModel(post.user!.name!,post.user!.image!,post.user!.timeFrom!,post.user!.isVerified!)),
          Post(post.text!,post.image!,post.hashtag!),
          PostDetails(post.reactions! , post.comments!, post.shares!),
          PostOptions(),
        ],
      ),
    );
  }
}
