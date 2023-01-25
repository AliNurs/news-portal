import 'package:megalab/features/personal_screen/domain/repositories/post_repo.dart';

class LoadPostCase {
  LoadPostCase({required this.postRepo});
  final PostRepo postRepo;

  Future<PostRepoResponse> loadPostData({
   
    required String postTitle,
    required String postText,
    String? postImage,
    required String postTag,
    required String postDescription,
  }) async {
    return await postRepo.loadPostData(

      postTitle: postTitle,
      postText: postText,
      postImage: postImage,
      postTag: postTag,
      postDescription: postDescription,
    );
  }
}
