import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ft_facebook_ui/Models/post_model.dart';
import 'package:ft_facebook_ui/Models/user_model.dart';
import 'package:ft_facebook_ui/sections/add_user_story.dart';
import 'package:ft_facebook_ui/sections/face_app_bar.dart';
import 'package:ft_facebook_ui/sections/friends_suggestions.dart';
import 'package:ft_facebook_ui/sections/post.dart';
import 'package:ft_facebook_ui/sections/post_body.dart';
import 'package:ft_facebook_ui/sections/post_details.dart';
import 'package:ft_facebook_ui/sections/post_options.dart';
import 'package:ft_facebook_ui/sections/followers_stories.dart';
import 'package:ft_facebook_ui/sections/section_name.dart';
import 'package:ft_facebook_ui/sections/user_header.dart';

import 'Converter/data_converter.dart';
import 'Models/friend_suggestion_model.dart';
import 'Models/story_model.dart';
import 'data/friend_suggestion_data.dart';
import 'data/post_data.dart';
import 'data/stories_data.dart';

class FaceMainUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: FaceAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [

              // stories
              SectionName("Stories", "See Archives"),

              Row(
                children: [
                  AddUserStory(UserModel.onlyUserImage(("assets/images/user.png"))),

                  SingleChildScrollView(
                    child: Row(
                        children: DataConverter.convertStoriesDataToList().map<Widget>((e) {
                          return FollowersStories(e);
                        }).toList()),
                  ),
                ],
              ),



              dividerLine(),
              //posts
              postsSection(),
              SingleChildScrollView(
                child: Column(
                    children: DataConverter.convertPostDataToList().map<Widget>((e) {
                      return PostBody(e);
                    }).toList()),
              ),


              dividerLine(),
              // friends
              SectionName("Friends Suggestions", "View All"),

              // friendsSection(),
              SingleChildScrollView(
                child: Row(
                    children: DataConverter.convertFriendSugDataToList().map<Widget>((e) {
                      return FriendsSuggestions(e);
                    }).toList()),
              ),
            ],
          ),
        ));
  }

  Widget dividerLine() {
    return Container(
        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
        child: const Divider(
          color: Color(0xFFDCD3D3),
          height: 10,
        ));
  }


  Widget postsSection() {
    return Column(
      children: [
        PostBody(PostModel(
          "hi",
          "#hash #hash2",
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/2014-06_Israel_-_Jerusalem_090_%2814936890061%29.jpg/1200px-2014-06_Israel_-_Jerusalem_090_%2814936890061%29.jpg",
          "12 k",
          2,
          3,
          UserModel(
              "rawan",
              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
              "2 d",
              true),
        )),
        PostBody(PostModel(
          "hello",
          "#hash #hash2 #hash #hash2",
          "https://media.istockphoto.com/id/598091988/vector/business-people-avatars.jpg?s=1024x1024&w=is&k=20&c=VLjRPma-XOvjTj-B4sQX_v0zHOrJ1CtTM3U-c66knjI=",
          "20 k",
          79,
          22,
          UserModel(
              "Aya",
              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
              "7 d",
              false),
        )),
      ],
    );
  }


}
