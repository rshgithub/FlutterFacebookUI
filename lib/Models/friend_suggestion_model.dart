
import '../data/friend_suggestion_data.dart';

class FriendSuggestionModel {

  String? friendName,  friendHint,  friendImage;
  FriendSuggestionModel(this.friendName,this.friendHint,this.friendImage,);


  FriendSuggestionModel.fromJsonMap(Map map) {
    friendName = map['friendName'];
    friendHint = map['friendHint'];
    friendImage = map['friendImage'];
  }

}