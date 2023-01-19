// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      token: json['token'] as String,
      postTitle: json['postTitle'] as String,
      postText: json['postText'] as String,
      postImage: json['postImage'] as String?,
      postTag: json['postTag'] as String,
      postDescription: json['postDescription'] as String,
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'postTitle': instance.postTitle,
      'postText': instance.postText,
      'postImage': instance.postImage,
      'postTag': instance.postTag,
      'postDescription': instance.postDescription,
    };
