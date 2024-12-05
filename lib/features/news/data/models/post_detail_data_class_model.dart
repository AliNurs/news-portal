class PostDetailModel {
  int? id;
  String? tag;
  String? title;
  String? text;
  String? image;
  bool? isLiked;
  String? shortDesc;
  String? author;
  List<Comment>? comment;

  PostDetailModel(
      {this.id,
      this.tag,
      this.title,
      this.text,
      this.image,
      this.isLiked,
      this.shortDesc,
      this.author,
      this.comment});

  PostDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tag = json['tag'];
    title = json['title'];
    text = json['text'];
    image = json['image'];
    isLiked = json['is_liked'];
    shortDesc = json['short_desc'];
    author = json['author'];
    if (json['comment'] != null) {
      comment = <Comment>[];
      json['comment'].forEach((v) {
        comment!.add(Comment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['tag'] = tag;
    data['title'] = title;
    data['text'] = text;
    data['image'] = image;
    data['is_liked'] = isLiked;
    data['short_desc'] = shortDesc;
    data['author'] = author;
    if (comment != null) {
      data['comment'] = comment!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Comment {
  int? id;
  User? user;
  String? text;
  List<String>? child;

  Comment({this.id, this.user, this.text, this.child});

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    text = json['text'];
    child = json['child'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['text'] = text;
    data['child'] = child;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? lastName;
  String? nickname;

  User({this.id, this.name, this.lastName, this.nickname});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastName = json['last_name'];
    nickname = json['nickname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['last_name'] = lastName;
    data['nickname'] = nickname;
    return data;
  }
}
