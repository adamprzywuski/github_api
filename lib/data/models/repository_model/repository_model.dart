import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository_model.freezed.dart';
part 'repository_model.g.dart';

@freezed
class RepositoryModel with _$RepositoryModel {
  factory RepositoryModel({
    required int id,
    required String node_id,
  }) = _RepositoryModel;

  factory RepositoryModel.fromJson(Map<String, dynamic> json) => _$RepositoryModelFromJson(json);
}
