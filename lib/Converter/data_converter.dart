import '../Models/friend_suggestion_model.dart';
import '../Models/post_model.dart';
import '../Models/story_model.dart';
import '../data/friend_suggestion_data.dart';
import '../data/post_data.dart';
import '../data/stories_data.dart';

class DataConverter{

  static List<PostModel> convertPostDataToList() {
    return postData.map((e) {
      return PostModel.fromJsonMap(e);
    }).toList();
  }

  static List<StoryModel> convertStoriesDataToList() {
    return storiesData.map((e) {
      return StoryModel.fromJsonMap(e);
    }).toList();
  }

  static List<FriendSuggestionModel> convertFriendSugDataToList() {
    return friendsSuggestionsData.map((e) {
      return FriendSuggestionModel.fromJsonMap(e);
    }).toList();
  }

}