// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
mixin _$PostModel {
  String get token => throw _privateConstructorUsedError;
  String get postTitle => throw _privateConstructorUsedError;
  String get postText => throw _privateConstructorUsedError;
  String? get postImage => throw _privateConstructorUsedError;
  String get postTag => throw _privateConstructorUsedError;
  String get postDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res, PostModel>;
  @useResult
  $Res call(
      {String token,
      String postTitle,
      String postText,
      String? postImage,
      String postTag,
      String postDescription});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res, $Val extends PostModel>
    implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? postTitle = null,
    Object? postText = null,
    Object? postImage = freezed,
    Object? postTag = null,
    Object? postDescription = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      postTitle: null == postTitle
          ? _value.postTitle
          : postTitle // ignore: cast_nullable_to_non_nullable
              as String,
      postText: null == postText
          ? _value.postText
          : postText // ignore: cast_nullable_to_non_nullable
              as String,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      postTag: null == postTag
          ? _value.postTag
          : postTag // ignore: cast_nullable_to_non_nullable
              as String,
      postDescription: null == postDescription
          ? _value.postDescription
          : postDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$$_PostModelCopyWith(
          _$_PostModel value, $Res Function(_$_PostModel) then) =
      __$$_PostModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String postTitle,
      String postText,
      String? postImage,
      String postTag,
      String postDescription});
}

/// @nodoc
class __$$_PostModelCopyWithImpl<$Res>
    extends _$PostModelCopyWithImpl<$Res, _$_PostModel>
    implements _$$_PostModelCopyWith<$Res> {
  __$$_PostModelCopyWithImpl(
      _$_PostModel _value, $Res Function(_$_PostModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? postTitle = null,
    Object? postText = null,
    Object? postImage = freezed,
    Object? postTag = null,
    Object? postDescription = null,
  }) {
    return _then(_$_PostModel(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      postTitle: null == postTitle
          ? _value.postTitle
          : postTitle // ignore: cast_nullable_to_non_nullable
              as String,
      postText: null == postText
          ? _value.postText
          : postText // ignore: cast_nullable_to_non_nullable
              as String,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as String?,
      postTag: null == postTag
          ? _value.postTag
          : postTag // ignore: cast_nullable_to_non_nullable
              as String,
      postDescription: null == postDescription
          ? _value.postDescription
          : postDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModel implements _PostModel {
  _$_PostModel(
      {required this.token,
      required this.postTitle,
      required this.postText,
      this.postImage,
      required this.postTag,
      required this.postDescription});

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final String token;
  @override
  final String postTitle;
  @override
  final String postText;
  @override
  final String? postImage;
  @override
  final String postTag;
  @override
  final String postDescription;

  @override
  String toString() {
    return 'PostModel(token: $token, postTitle: $postTitle, postText: $postText, postImage: $postImage, postTag: $postTag, postDescription: $postDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostModel &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.postTitle, postTitle) ||
                other.postTitle == postTitle) &&
            (identical(other.postText, postText) ||
                other.postText == postText) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage) &&
            (identical(other.postTag, postTag) || other.postTag == postTag) &&
            (identical(other.postDescription, postDescription) ||
                other.postDescription == postDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, postTitle, postText,
      postImage, postTag, postDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      __$$_PostModelCopyWithImpl<_$_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelToJson(
      this,
    );
  }
}

abstract class _PostModel implements PostModel {
  factory _PostModel(
      {required final String token,
      required final String postTitle,
      required final String postText,
      final String? postImage,
      required final String postTag,
      required final String postDescription}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  String get token;
  @override
  String get postTitle;
  @override
  String get postText;
  @override
  String? get postImage;
  @override
  String get postTag;
  @override
  String get postDescription;
  @override
  @JsonKey(ignore: true)
  _$$_PostModelCopyWith<_$_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}
