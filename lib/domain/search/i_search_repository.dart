import 'package:cubtale_challenge/domain/search/search_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ISearchRepository {
  Future<Either<SearchFailure, dynamic>> findByMail(String mail);
  Future<Either<SearchFailure, dynamic>> findByID(String id);
  Future<Either<SearchFailure, dynamic>> findByDate(String date);
}
