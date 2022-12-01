part of 'downloading_repo_cubit.dart';

@freezed
class DownloadingRepoState with _$DownloadingRepoState {
  const factory DownloadingRepoState.initial() = _Initial;

  const factory DownloadingRepoState.loading() = _Loading;

  const factory DownloadingRepoState.downloaded(RepositoryUiModel repository) = _Downloaded;

  const factory DownloadingRepoState.error() = _Error;
}
