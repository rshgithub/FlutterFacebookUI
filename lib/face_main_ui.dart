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
              storiesSection(),
              dividerLine(),

              //posts
              postsSection(),
              dividerLine(),

              // friends
              SectionName("Friends Suggestions", "View All"),
              friendsSection(),

              // SingleChildScrollView(
              //   child: Row(
              //       children: DataConverter.convertFriendSugDataToList().map<Widget>((e) {
              //         return friendsSuggestionsData(e);
              //       }).toList()),
              // ),
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

  Widget storiesSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AddUserStory("assets/images/user.png"),
          FollowersStories(
              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
              "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
          FollowersStories(
              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
              "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
          FollowersStories(
              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
              "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
          FollowersStories(
              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
              "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
          FollowersStories(
              "https://cdn-icons-png.flaticon.com/512/147/147144.png",
              "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
        ],
      ),
    );
  }

  Widget postsSection() {
    return Column(
      children: [
        PostBody(PostModel(
          "hi",
          "#hash #hash2",
          "https://cdn-icons-png.flaticon.com/512/147/147144.png",
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
          "https://cdn-icons-png.flaticon.com/512/147/147144.png",
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

  Widget friendsSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FriendsSuggestions('friendName', 'friendHint',
              'https://images.unsplash.com/photo-1667855898568-40720de40a08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=370&q=80'),
          FriendsSuggestions('friendName', 'friendHint',
              'https://images.unsplash.com/photo-1667855898568-40720de40a08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=370&q=80'),
          FriendsSuggestions('friendName', 'friendHint',
              'https://images.unsplash.com/photo-1667855898568-40720de40a08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=370&q=80'),
          FriendsSuggestions('friendName', 'friendHint',
              'https://images.unsplash.com/photo-1667855898568-40720de40a08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=370&q=80'),
          FriendsSuggestions('friendName', 'friendHint',
              'https://images.unsplash.com/photo-1667855898568-40720de40a08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=370&q=80'),
          FriendsSuggestions('friendName', 'friendHint',
              'https://images.unsplash.com/photo-1667855898568-40720de40a08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=370&q=80'),
          FriendsSuggestions('friendName', 'friendHint',
              'https://images.unsplash.com/photo-1667855898568-40720de40a08?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=370&q=80'),
        ],
      ),
    );
  }
}
