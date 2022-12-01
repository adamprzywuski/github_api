import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/data/local_data_source/local_data_source.dart';
import 'package:github_api/domain/downloading_domain.dart';
import 'package:github_api/domain/ui_model/repository_ui_model.dart';
import 'package:injectable/injectable.dart';

part 'downloading_repo_state.dart';
part 'downloading_repo_cubit.freezed.dart';

@injectable
class DownloadingRepoCubit extends Cubit<DownloadingRepoState> {
  final DownloadingDomain _downloadingDomain;
  final LocalDataSource _localDataSource;

  DownloadingRepoCubit(this._downloadingDomain, this._localDataSource) : super(const DownloadingRepoState.initial());

  Future<void> findRepo(String repositoryName) async {
    final response = await _downloadingDomain.getRepository(repositoryName);
    response.fold((l) => emit(const DownloadingRepoState.error()), (r) {
      emit(DownloadingRepoState.downloaded(r));
      _localDataSource.saveData(r);
    });
  }
}
