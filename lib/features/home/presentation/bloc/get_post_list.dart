part of 'home_bloc/post_list_bloc.dart';

@freezed
class GetPostList with _$GetPostList {
  const factory GetPostList.getPostList({
    String? token,
    String? search,
    String? tag,
    String? author,
  }) = _GetPostList;
}
