import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/data/models/author_model/author_model.dart';

part 'commit_model.freezed.dart';
part 'commit_model.g.dart';

@freezed
class CommitModel with _$CommitModel {
  const factory CommitModel({
    required String message,
    required AuthorModel author,
    required String sha,
  }) = _CommitModel;

  factory CommitModel.fromJson(Map<String, dynamic> json) => _$CommitModelFromJson(json);

  factory CommitModel.convertToJson(Map<String, dynamic> json) {
    return CommitModel.fromJson({...json, "sha": json["tree"]["sha"]});
  }
}
