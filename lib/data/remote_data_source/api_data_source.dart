import 'dart:convert';

import 'package:github_api/data/models/commit_model/commit_model.dart';
import 'package:github_api/data/models/repository_model/repository_model.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

@Singleton()
class ApiDataSource {
  Future<Either<String, RepositoryModel>> getRepositoryInformation(String repositoryName) async {
    final response = await http.get(Uri.parse('https://api.github.com/repos/$repositoryName'));

    if (response.statusCode == 200) {
      return Right(RepositoryModel.fromJson(jsonDecode(response.body)));
    } else {
      return Left(response.statusCode.toString());
    }
  }

  Future<Either<String, List<CommitModel>>> getCommitsInformation(String repositoryName) async {
    final response = await http.get(Uri.parse('https://api.github.com/repos/$repositoryName/commits'));

    if (response.statusCode == 200) {
      final jsonDecoded = json.decode(response.body) as List<dynamic>;
      final commitsList = jsonDecoded.map((e) => CommitModel.convertToJson(e["commit"])).toList();

      return Right(commitsList);
    } else {
      return Left(response.statusCode.toString());
    }
  }
}
