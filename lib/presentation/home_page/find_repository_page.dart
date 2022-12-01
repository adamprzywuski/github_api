import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_api/presentation/home_page/cubit/downloading_repo_cubit.dart';
import 'package:github_api/presentation/home_page/widget/repository_panel_widget.dart';

class FindRepositoryPage extends StatefulWidget {
  const FindRepositoryPage({Key? key}) : super(key: key);

  @override
  State<FindRepositoryPage> createState() => _FindRepositoryPageState();
}

class _FindRepositoryPageState extends State<FindRepositoryPage> {
  final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: ((value) => _isNameRepositoryCorrect(value)),
                      controller: _textController,
                      decoration: const InputDecoration(
                        hintText: "{username}/{nameOfRepo} ",
                        filled: true,
                        border: OutlineInputBorder(),
                        alignLabelWithHint: true,
                        labelStyle: TextStyle(
                          fontSize: 14,
                        ),
                        isDense: true,
                      ),
                    ),
                  ),
                  TextButton.icon(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? true) {
                          BlocProvider.of<DownloadingRepoCubit>(context).findRepo(_textController.text);
                        }
                      },
                      icon: const Icon(
                        Icons.find_in_page,
                        size: 32,
                      ),
                      label: const SizedBox.shrink())
                ],
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
                child: BlocBuilder<DownloadingRepoCubit, DownloadingRepoState>(
                  builder: (context, state) => state.maybeWhen(
                    loading: (() => const CircularProgressIndicator()),
                    orElse: (() => Container()),
                    downloaded: (repository) => RepositoryPanelWidget(repository: repository),
                  ),
                ))
          ],
        ));
  }

  String? _isNameRepositoryCorrect(String? value) {
    if (value == null) {
      return "Field can't be empty";
    } else if (!value.contains("/")) {
      return "Incorrect Repository Name";
    } else {
      return null;
    }
  }
}
