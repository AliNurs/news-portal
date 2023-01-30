// ignore_for_file: prefer_collection_literals

class PostModel {
  int? id;
  String? tag;
  String? title;
  String? text;
  String? image;
  bool? isLiked;
  List<String>? comment;

  PostModel({id, tag, title, text, image, isLiked, comment});

  PostModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tag = json['tag'];
    title = json['title'];
    text = json['text'];
    image = json['image'];
    isLiked = json['is_liked'];
    comment = json['comment'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['tag'] = tag;
    data['title'] = title;
    data['text'] = text;
    data['image'] = image;
    data['is_liked'] = isLiked;
    data['comment'] = comment;
    return data;
  }
}
