import 'package:ft_facebook_ui/data/post_data.dart';

import 'user_model.dart';

class PostModel {
  String? text ,hashtag , reactions , image;
  int? comments , shares;
  UserModel? user;

  PostModel(this.text ,this.hashtag , this.image, this.reactions , this.comments , this.shares , this.user);

  PostModel.fromJsonMap(Map<String, dynamic> json) {
    text = json['text'];
    hashtag = json['hashtag'];
    reactions = json['reactions'];
    comments = json['comments'];
    shares = json['shares'];
    image = json['image'];
    json['user'] != null ? UserModel.fromJsonMap(json['user']) : null;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['text'] = this.text;
    data['hashtag'] = this.hashtag;
    data['reactions'] = this.reactions;
    data['comments'] = this.comments;
    data['shares'] = this.shares;
    data['image'] = this.image;
    if (this.user != null) { data['user'] = this.user!.toMap(); }
    return data;
  }


}
