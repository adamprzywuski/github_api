import 'package:flutter/material.dart';
import 'package:github_api/domain/ui_model/repository_ui_model.dart';

class RepositoryPanelWidget extends StatelessWidget {
  final RepositoryUiModel repository;

  const RepositoryPanelWidget({Key? key, required this.repository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          repository.name,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Expanded(
            child: ListView.builder(
                itemBuilder: ((context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(repository.commits[index].author),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(repository.commits[index].sha),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(repository.commits[index].message),
                            ],
                          ),
                        ),
                      ),
                    )))),
        const Divider(
          thickness: 4,
        ),
      ],
    );
  }


}
