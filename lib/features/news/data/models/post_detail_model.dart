import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_model.freezed.dart';
part 'post_detail_model.g.dart';

@freezed
class PostDetailModel with _$PostDetailModel {
  factory PostDetailModel({
    required int? id,
    required String? tag,
    required String? title,
    required String? text,
    required String? image,
    required bool? isLiked,
    required String? shortDesc,
    required String? author,
    required List<Comment>? comment,
  }) = _PostDetailModel;

  factory PostDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PostDetailModelFromJson(json);
}

@freezed
class Comment with _$Comment {
  factory Comment({
    required int? id,
    required User? user,
    required String? text,
    required List<String>? child,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    required int? id,
    required String? name,
    required String? lastName,
    required String? nickname,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
