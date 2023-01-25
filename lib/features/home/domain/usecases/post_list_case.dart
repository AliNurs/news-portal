import 'package:megalab/features/home/domain/repositories/post_list_repo.dart';

class PostListCase {
  PostListCase({required this.postListRepo});
  final PostListRepo postListRepo;

  Future<PostListRepoResponse> getPostList({
    required String search,
    required String tag,
    required String author,
    required String token,
  }) async {
    final result = await postListRepo.getPostList(
      search: search,
      token: token,
      tag: tag,
      author: author,
    );
    if (result.getPostListModel != null) {
      return PostListRepoResponse(getPostListModel: result.getPostListModel);
    }
    return PostListRepoResponse(error: result.error);
  }
}
