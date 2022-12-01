import 'package:github_api/domain/ui_model/repository_ui_model.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocalDataSource {
  late Box box;

  Future<void> saveData(RepositoryUiModel model) async {
    box = await Hive.openBox("repo");
    await box.put(model.name, model);
    box.close();
  }

  Future<List<RepositoryUiModel>> readData() async {
    box = await Hive.openBox("repo");
    final val = ((box.keys).map((e) => box.get(e) as RepositoryUiModel).toList());
    
    box.close();
    return val;
  }
}
