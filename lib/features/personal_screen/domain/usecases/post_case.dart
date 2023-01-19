import 'package:megalab/features/personal_screen/domain/repositories/load_post_repo.dart';

class LoadPostCase {
  LoadPostCase({required this.postRepo});
  final LoadPostRepo postRepo;

  Future<LoadPostRepoResponse> loadPostData({
    required String token,
    required String postTitle,
    required String postText,
    String? postImage,
    required String postTag,
    required String postDescription,
  }) async {
    return await postRepo.loadPostData(
      token: token,
      postTitle: postTitle,
      postText: postText,
      postImage: postImage,
      postTag: postTag,
      postDescription: postDescription,
    );
  }
}
