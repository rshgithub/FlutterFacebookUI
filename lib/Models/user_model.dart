import 'dart:ui';

class UserModel {

  String? name;
  String? image;
  String? timeFrom;
  bool? isVerified;

  UserModel(this.name, this.image,this.timeFrom, this.isVerified);
  UserModel.onlyUserImage(this.image);

  UserModel.fromJsonMap(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    timeFrom = json['timeFrom'];
    isVerified = json['isVerified'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['timeFrom'] = this.timeFrom;
    data['isVerified'] = this.isVerified;
    return data;
  }
}

