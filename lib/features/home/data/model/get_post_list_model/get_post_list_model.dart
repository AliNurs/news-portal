class GetPostListModel {
  int? id;
  String? tag;
  String? title;
  String? text;
  String? image;
  bool? isLiked;
  List<Comment>? comment;
  String? shortDesc;
  String? author;

  GetPostListModel(
      {this.id,
      this.tag,
      this.title,
      this.text,
      this.image,
      this.isLiked,
      this.comment,
      this.shortDesc,
      this.author});

  GetPostListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tag = json['tag'];
    title = json['title'];
    text = json['text'];
    image = json['image'];
    isLiked = json['is_liked'];
    if (json['comment'] != null) {
      comment = <Comment>[];
      json['comment'].forEach((v) {
        comment!.add(Comment.fromJson(v));
      });
    }
    shortDesc = json['short_desc'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['tag'] = tag;
    data['title'] = title;
    data['text'] = text;
    data['image'] = image;
    data['is_liked'] = isLiked;
    if (comment != null) {
      data['comment'] = comment!.map((v) => v.toJson()).toList();
    }
    data['short_desc'] = shortDesc;
    data['author'] = author;
    return data;
  }
}

class Comment {
  int? id;
  User? user;
  String? text;
  List<Child>? child;

  Comment({this.id, this.user, this.text, this.child});

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    text = json['text'];
    if (json['child'] != null) {
      child = <Child>[];
      json['child'].forEach((v) {
        child!.add(Child.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['text'] = text;
    if (child != null) {
      data['child'] = child!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class User {
  int? id;
  String? nickname;
  String? name;
  String? lastName;
  String? profileImage;

  User({this.id, this.nickname, this.name, this.lastName, this.profileImage});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nickname = json['nickname'];
    name = json['name'];
    lastName = json['last_name'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nickname'] = nickname;
    data['name'] = name;
    data['last_name'] = lastName;
    data['profile_image'] = profileImage;
    return data;
  }
}

class Child {
  int? id;
  User? user;
  String? text;

  Child({this.id, this.user, this.text});

  Child.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['text'] = text;
    return data;
  }
}
