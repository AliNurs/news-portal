// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadPost {
  String get token => throw _privateConstructorUsedError;
  String get postTitle => throw _privateConstructorUsedError;
  String get postText => throw _privateConstructorUsedError;
  String? get postImage => throw _privateConstructorUsedError;
  String get postTag => throw _privateConstructorUsedError;
  String get postDescription => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String postTitle, String postText,
            String? postImage, String postTag, String postDescription)
        loadPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String postTitle, String postText,
            String? postImage, String postTag, String postDescription)?
        loadPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String postTitle, String postText,
            String? postImage, String postTag, String postDescription)?
        loadPostData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPostData value) loadPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPostData value)? loadPostData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPostData value)? loadPostData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadPostCopyWith<LoadPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadPostCopyWith<$Res> {
  factory $LoadPostCopyWith(LoadPost value, $Res Function(LoadPost) then) =
      _$LoadPostCopyWithImpl<$Res, LoadPost>;
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
class _$LoadPostCopyWithImpl<$Res, $Val extends LoadPost>
    implements $LoadPostCopyWith<$Res> {
  _$LoadPostCopyWithImpl(this._value, this._then);

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
abstract class _$$_LoadPostDataCopyWith<$Res>
    implements $LoadPostCopyWith<$Res> {
  factory _$$_LoadPostDataCopyWith(
          _$_LoadPostData value, $Res Function(_$_LoadPostData) then) =
      __$$_LoadPostDataCopyWithImpl<$Res>;
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
class __$$_LoadPostDataCopyWithImpl<$Res>
    extends _$LoadPostCopyWithImpl<$Res, _$_LoadPostData>
    implements _$$_LoadPostDataCopyWith<$Res> {
  __$$_LoadPostDataCopyWithImpl(
      _$_LoadPostData _value, $Res Function(_$_LoadPostData) _then)
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
    return _then(_$_LoadPostData(
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

class _$_LoadPostData implements _LoadPostData {
  const _$_LoadPostData(
      {required this.token,
      required this.postTitle,
      required this.postText,
      this.postImage,
      required this.postTag,
      required this.postDescription});

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
    return 'LoadPost.loadPostData(token: $token, postTitle: $postTitle, postText: $postText, postImage: $postImage, postTag: $postTag, postDescription: $postDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadPostData &&
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

  @override
  int get hashCode => Object.hash(runtimeType, token, postTitle, postText,
      postImage, postTag, postDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadPostDataCopyWith<_$_LoadPostData> get copyWith =>
      __$$_LoadPostDataCopyWithImpl<_$_LoadPostData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String postTitle, String postText,
            String? postImage, String postTag, String postDescription)
        loadPostData,
  }) {
    return loadPostData(
        token, postTitle, postText, postImage, postTag, postDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String postTitle, String postText,
            String? postImage, String postTag, String postDescription)?
        loadPostData,
  }) {
    return loadPostData?.call(
        token, postTitle, postText, postImage, postTag, postDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String postTitle, String postText,
            String? postImage, String postTag, String postDescription)?
        loadPostData,
    required TResult orElse(),
  }) {
    if (loadPostData != null) {
      return loadPostData(
          token, postTitle, postText, postImage, postTag, postDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadPostData value) loadPostData,
  }) {
    return loadPostData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadPostData value)? loadPostData,
  }) {
    return loadPostData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadPostData value)? loadPostData,
    required TResult orElse(),
  }) {
    if (loadPostData != null) {
      return loadPostData(this);
    }
    return orElse();
  }
}

abstract class _LoadPostData implements LoadPost {
  const factory _LoadPostData(
      {required final String token,
      required final String postTitle,
      required final String postText,
      final String? postImage,
      required final String postTag,
      required final String postDescription}) = _$_LoadPostData;

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
  _$$_LoadPostDataCopyWith<_$_LoadPostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function() error,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? succes,
    TResult? Function()? error,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function()? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) succes,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res, PostState>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res, $Val extends PostState>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PostState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function() error,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? succes,
    TResult? Function()? error,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function()? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) succes,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PostState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_SuccesCopyWith<$Res> {
  factory _$$_SuccesCopyWith(_$_Succes value, $Res Function(_$_Succes) then) =
      __$$_SuccesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccesCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_Succes>
    implements _$$_SuccesCopyWith<$Res> {
  __$$_SuccesCopyWithImpl(_$_Succes _value, $Res Function(_$_Succes) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Succes implements _Succes {
  const _$_Succes();

  @override
  String toString() {
    return 'PostState.succes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Succes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function() error,
    required TResult Function() initial,
  }) {
    return succes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? succes,
    TResult? Function()? error,
    TResult? Function()? initial,
  }) {
    return succes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function()? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) succes,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class _Succes implements PostState {
  const factory _Succes() = _$_Succes;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'PostState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function() error,
    required TResult Function() initial,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? succes,
    TResult? Function()? error,
    TResult? Function()? initial,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function()? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) succes,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PostState {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() succes,
    required TResult Function() error,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? succes,
    TResult? Function()? error,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? succes,
    TResult Function()? error,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Succes value) succes,
    required TResult Function(_Error value) error,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Succes value)? succes,
    TResult? Function(_Error value)? error,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Succes value)? succes,
    TResult Function(_Error value)? error,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PostState {
  const factory _Initial() = _$_Initial;
}
