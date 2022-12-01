// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitModel _$$_CommitModelFromJson(Map<String, dynamic> json) =>
    _$_CommitModel(
      message: json['message'] as String,
      author: AuthorModel.fromJson(json['author'] as Map<String, dynamic>),
      sha: json['sha'] as String,
    );

Map<String, dynamic> _$$_CommitModelToJson(_$_CommitModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'author': instance.author.toJson(),
      'sha': instance.sha,
    };
