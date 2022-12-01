import 'package:github_api/data/models/commit_model/commit_model.dart';
import 'package:hive/hive.dart';

part 'commit_ui_model.g.dart';

@HiveType(typeId: 2)
class CommitUiModel {
  CommitUiModel(this.message, this.author, this.sha);

  @HiveField(0)
  String sha;

  @HiveField(1)
  String author;

  @HiveField(2)
  String message;
}

CommitUiModel fromCommitModelToUi(CommitModel commit) => CommitUiModel(commit.message, commit.author.name, commit.sha);
