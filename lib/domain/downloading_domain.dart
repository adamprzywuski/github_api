import 'package:dartz/dartz.dart';
import 'package:github_api/domain/ui_model/commit_ui_model.dart';
import 'package:github_api/domain/ui_model/repository_ui_model.dart';
import 'package:injectable/injectable.dart';

import '../data/remote_data_source/api_data_source.dart';

@injectable
class DownloadingDomain {
  final ApiDataSource _apiDataSource;

  DownloadingDomain(this._apiDataSource);

  Future<Either<String, RepositoryUiModel>> getRepository(String repositoryName) async {
    final commits = await _apiDataSource.getCommitsInformation(repositoryName);
    final repositoryInfo = await _apiDataSource.getRepositoryInformation(repositoryName);
    return commits.fold(
      (l) => Left(l),
      (commits) => repositoryInfo.fold(
        (l) => Left(l),
        (repoInfo) => Right(RepositoryUiModel(
          commits.map(((e) => fromCommitModelToUi(e))).toList(),
          repoInfo.id,
          repositoryName,
        )),
      ),
    );
  }
}
