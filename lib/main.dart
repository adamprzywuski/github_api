import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_api/common/module.dart';
import 'package:github_api/domain/ui_model/commit_ui_model.dart';
import 'package:github_api/domain/ui_model/repository_ui_model.dart';
import 'package:github_api/presentation/home_page/cubit/downloading_repo_cubit.dart';
import 'package:github_api/presentation/home_page/home_page.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'presentation/home_page/cubit/history_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  getApplicationDocumentsDirectory().then((directory) => Hive.init(directory.path));
  Hive.registerAdapter(CommitUiModelAdapter());
  Hive.registerAdapter(RepositoryUiModelAdapter());
  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => di<DownloadingRepoCubit>()),
          BlocProvider(create: (_) => di<HistoryCubit>()..init()),
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primarySwatch: Colors.blue,
            ),
            home: const HomePage()));
  }
}
