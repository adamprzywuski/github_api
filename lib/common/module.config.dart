// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:github_api/data/local_data_source/local_data_source.dart'
    as _i5;
import 'package:github_api/data/remote_data_source/api_data_source.dart' as _i3;
import 'package:github_api/domain/downloading_domain.dart' as _i4;
import 'package:github_api/presentation/home_page/cubit/downloading_repo_cubit.dart'
    as _i6;
import 'package:github_api/presentation/home_page/cubit/history_cubit.dart'
    as _i7;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.ApiDataSource>(_i3.ApiDataSource());
  gh.factory<_i4.DownloadingDomain>(
      () => _i4.DownloadingDomain(get<_i3.ApiDataSource>()));
  gh.factory<_i5.LocalDataSource>(() => _i5.LocalDataSource());
  gh.factory<_i6.DownloadingRepoCubit>(() => _i6.DownloadingRepoCubit(
        get<_i4.DownloadingDomain>(),
        get<_i5.LocalDataSource>(),
      ));
  gh.factory<_i7.HistoryCubit>(
      () => _i7.HistoryCubit(get<_i5.LocalDataSource>()));
  return get;
}
