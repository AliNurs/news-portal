import 'package:megalab/features/home/domain/repositories/post_list_repo.dart';

class PostListCase {
  PostListCase({required this.postListRepo});
  final PostListRepo postListRepo;

  Future<PostListRepoResponse> getPostList({
    required String search,
    required String tag,
    required String author,
  }) async {
    return await postListRepo.getPostList(
      search: search,
      tag: tag,
      author: author,
    );
  }
}
