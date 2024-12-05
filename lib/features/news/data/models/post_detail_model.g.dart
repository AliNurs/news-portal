// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostDetailModelImpl _$$PostDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDetailModelImpl(
      id: (json['id'] as num?)?.toInt(),
      tag: json['tag'] as String?,
      title: json['title'] as String?,
      text: json['text'] as String?,
      image: json['image'] as String?,
      isLiked: json['isLiked'] as bool?,
      shortDesc: json['shortDesc'] as String?,
      author: json['author'] as String?,
      comment: (json['comment'] as List<dynamic>?)
          ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostDetailModelImplToJson(
        _$PostDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tag': instance.tag,
      'title': instance.title,
      'text': instance.text,
      'image': instance.image,
      'isLiked': instance.isLiked,
      'shortDesc': instance.shortDesc,
      'author': instance.author,
      'comment': instance.comment,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      text: json['text'] as String?,
      child:
          (json['child'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'text': instance.text,
      'child': instance.child,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'nickname': instance.nickname,
    };
