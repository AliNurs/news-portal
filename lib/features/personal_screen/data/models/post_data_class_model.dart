class PostModel {
  int? id;
  String? tag;
  String? title;
  String? text;
  String? image;
  bool? isLiked;
  List<String>? comment;

  PostModel(
      {this.id,
      this.tag,
      this.title,
      this.text,
      this.image,
      this.isLiked,
      this.comment});

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tag'] = this.tag;
    data['title'] = this.title;
    data['text'] = this.text;
    data['image'] = this.image;
    data['is_liked'] = this.isLiked;
    data['comment'] = this.comment;
    return data;
  }
}