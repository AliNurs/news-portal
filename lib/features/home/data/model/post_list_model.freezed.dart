// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostListModel _$PostListModelFromJson(Map<String, dynamic> json) {
  return _PostListModel.fromJson(json);
}

/// @nodoc
mixin _$PostListModel {
  String get search => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostListModelCopyWith<PostListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListModelCopyWith<$Res> {
  factory $PostListModelCopyWith(
          PostListModel value, $Res Function(PostListModel) then) =
      _$PostListModelCopyWithImpl<$Res, PostListModel>;
  @useResult
  $Res call({String search, String tag, String author});
}

/// @nodoc
class _$PostListModelCopyWithImpl<$Res, $Val extends PostListModel>
    implements $PostListModelCopyWith<$Res> {
  _$PostListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? tag = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostListModelCopyWith<$Res>
    implements $PostListModelCopyWith<$Res> {
  factory _$$_PostListModelCopyWith(
          _$_PostListModel value, $Res Function(_$_PostListModel) then) =
      __$$_PostListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String search, String tag, String author});
}

/// @nodoc
class __$$_PostListModelCopyWithImpl<$Res>
    extends _$PostListModelCopyWithImpl<$Res, _$_PostListModel>
    implements _$$_PostListModelCopyWith<$Res> {
  __$$_PostListModelCopyWithImpl(
      _$_PostListModel _value, $Res Function(_$_PostListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
    Object? tag = null,
    Object? author = null,
  }) {
    return _then(_$_PostListModel(
      search: null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostListModel implements _PostListModel {
  _$_PostListModel(
      {required this.search, required this.tag, required this.author});

  factory _$_PostListModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostListModelFromJson(json);

  @override
  final String search;
  @override
  final String tag;
  @override
  final String author;

  @override
  String toString() {
    return 'PostListModel(search: $search, tag: $tag, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostListModel &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, search, tag, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostListModelCopyWith<_$_PostListModel> get copyWith =>
      __$$_PostListModelCopyWithImpl<_$_PostListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostListModelToJson(
      this,
    );
  }
}

abstract class _PostListModel implements PostListModel {
  factory _PostListModel(
      {required final String search,
      required final String tag,
      required final String author}) = _$_PostListModel;

  factory _PostListModel.fromJson(Map<String, dynamic> json) =
      _$_PostListModel.fromJson;

  @override
  String get search;
  @override
  String get tag;
  @override
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_PostListModelCopyWith<_$_PostListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
