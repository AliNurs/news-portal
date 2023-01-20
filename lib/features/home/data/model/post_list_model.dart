import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';

@freezed
class PostListModel with _$PostListModel {
  factory PostListModel({
    required String search,
    required String tag,
    required String author,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}
