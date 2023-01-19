// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// import 'package:megalab/features/personal/domain/usecases/personal_case.dart';

part '../personal_events/load_post.dart';
part '../personal_state/post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<LoadPost, PostState> {
  PostBloc() : super(const PostState.initial()) {}
}



