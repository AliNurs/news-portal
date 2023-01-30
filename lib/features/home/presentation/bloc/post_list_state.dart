part of 'home_bloc/post_list_bloc.dart';

@freezed
class PostListState with _$PostListState {
  const factory PostListState.loading() = _Loading;
  const factory PostListState.succes({
    List<GetPostListModel>? getPostListModel,
  }) = _Succes;
  const factory PostListState.error({String? errorMessage}) = _Error;
  const factory PostListState.initial() = _Initial;
}
