import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_api/presentation/home_page/cubit/history_cubit.dart';
import 'package:github_api/presentation/home_page/widget/repository_panel_widget.dart';

class HistoryOfSearchingPage extends StatefulWidget {
  const HistoryOfSearchingPage({Key? key}) : super(key: key);

  @override
  State<HistoryOfSearchingPage> createState() => _HistoryOfSearchingPageState();
}

class _HistoryOfSearchingPageState extends State<HistoryOfSearchingPage> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<HistoryCubit, HistoryState>(
            builder: (context, state) => state.maybeWhen(
                loaded: (repository) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.height * 0.7,
                    child: ListView.builder(
                        shrinkWrap: true,
                        controller: _controller,
                        itemCount: repository.length,
                        itemBuilder: ((context, index) => Container(
                            color: Colors.grey,
                            padding: const EdgeInsets.only(top: 16),
                            height: MediaQuery.of(context).size.height * 0.45,
                            width: MediaQuery.of(context).size.height * 0.7,
                            child: RepositoryPanelWidget(repository: repository[index])))),
                  );
                },
                orElse: () => const SizedBox.shrink())));
  }
}
