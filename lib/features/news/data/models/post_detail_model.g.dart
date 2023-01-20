// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostDetailModel _$$_PostDetailModelFromJson(Map<String, dynamic> json) =>
    _$_PostDetailModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_PostDetailModelToJson(_$_PostDetailModel instance) =>
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

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      id: json['id'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      text: json['text'] as String?,
      child:
          (json['child'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'text': instance.text,
      'child': instance.child,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      nickname: json['nickname'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lastName': instance.lastName,
      'nickname': instance.nickname,
    };
