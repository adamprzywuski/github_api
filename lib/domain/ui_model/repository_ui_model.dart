import 'package:github_api/domain/ui_model/commit_ui_model.dart';
import 'package:hive/hive.dart';

part 'repository_ui_model.g.dart';

@HiveType(typeId: 1)
class RepositoryUiModel {
  RepositoryUiModel(
    this.commits,
    this.id,
    this.name,
  );
  @HiveField(0)
  List<CommitUiModel> commits;
  @HiveField(1)
  int id;
  @HiveField(2)
  String name;
}
