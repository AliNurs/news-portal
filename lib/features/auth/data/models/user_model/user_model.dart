// ignore_for_file: prefer_collection_literals

class UserModel {
  int? id;
  String? nickname;
  String? name;
  String? lastName;
  String? profileImage;

  UserModel({id, nickname, name, lastName, profileImage});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nickname = json['nickname'];
    name = json['name'];
    lastName = json['last_name'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['nickname'] = nickname;
    data['name'] = name;
    data['last_name'] = lastName;
    data['profile_image'] = profileImage;
    return data;
  }
}
