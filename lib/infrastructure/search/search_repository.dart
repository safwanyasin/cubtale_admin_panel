import 'dart:convert';

import 'package:cubtale_challenge/domain/search/search_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:cubtale_challenge/domain/search/i_search_repository.dart';

@lazySingleton
class SearchRepository implements ISearchRepository {
  SearchRepository();

  Future<dynamic> getResult(dynamic data) async {
    final parameters = data;
    try {
      final dio = Dio();
      final Response response = await dio.get(
          "https://4t3mnxl8p8.execute-api.us-east-2.amazonaws.com/default/AdminPanelSearch",
          data: parameters);
      final data = jsonDecode(response.data);
      return data;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Either<SearchFailure, dynamic>> findByMail(String mail) async {
    final result = await getResult({'email': mail});
    if (result == null) {
      return left(const SearchFailure.unexpected());
    } else {
      return right(result);
    }
  }

  @override
  Future<Either<SearchFailure, dynamic>> findByID(String id) async {
    final result = await getResult({'acc_id': id});
    if (result == null) {
      return left(const SearchFailure.unexpected());
    } else {
      return right(result);
    }
  }

  @override
  Future<Either<SearchFailure, dynamic>> findByDate(String date) async {
    final result = await getResult({'acc_creation_date': date});
    if (result == null) {
      return left(const SearchFailure.unexpected());
    } else {
      return right(result);
    }
  }
}
