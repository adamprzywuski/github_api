part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;

  const factory HistoryState.loaded(List<RepositoryUiModel> repositoryUiModel) = _Loaded;
}
