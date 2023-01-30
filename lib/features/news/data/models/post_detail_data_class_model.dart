class PostDetailModel {
  int? id;
  String? tag;
  String? title;
  String? text;
  Null? image;
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
        comment!.add( Comment.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    data['tag'] = this.tag;
    data['title'] = this.title;
    data['text'] = this.text;
    data['image'] = this.image;
    data['is_liked'] = this.isLiked;
    data['short_desc'] = this.shortDesc;
    data['author'] = this.author;
    if (this.comment != null) {
      data['comment'] = this.comment!.map((v) => v.toJson()).toList();
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
    user = json['user'] != null ?  User.fromJson(json['user']) : null;
    text = json['text'];
    child = json['child'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['text'] = this.text;
    data['child'] = this.child;
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
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['last_name'] = this.lastName;
    data['nickname'] = this.nickname;
    return data;
  }
}