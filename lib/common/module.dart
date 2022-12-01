import 'package:get_it/get_it.dart';
import 'package:github_api/common/module.config.dart';
import 'package:injectable/injectable.dart';

final di = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
void configureDependencies() => $initGetIt(di);
