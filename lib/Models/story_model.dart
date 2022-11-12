
class StoryModel {

  String? user_image , story_image;

  StoryModel(this.user_image, this.story_image);


  StoryModel.fromJsonMap(Map<String, dynamic> json) {
    user_image = json['user_image'];
    story_image = json['story_image'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['user_image'] = this.user_image;
    data['story_image'] = this.story_image;
    return data;
  }
}
