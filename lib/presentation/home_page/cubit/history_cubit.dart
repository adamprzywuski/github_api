import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_api/data/local_data_source/local_data_source.dart';
import 'package:github_api/domain/ui_model/repository_ui_model.dart';
import 'package:injectable/injectable.dart';

part 'history_state.dart';
part 'history_cubit.freezed.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> {
  final LocalDataSource _localDataSource;
  HistoryCubit(this._localDataSource) : super(const HistoryState.initial());

  Future<void> init() async {
    final repositoryList = await _localDataSource.readData();
    emit(HistoryState.loaded(repositoryList));
  }
}
