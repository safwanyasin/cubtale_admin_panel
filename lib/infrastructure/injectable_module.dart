import 'package:cubtale_challenge/domain/auth/login/i_login_facade.dart';
import 'package:cubtale_challenge/domain/search/i_search_repository.dart';
import 'package:cubtale_challenge/infrastructure/auth/login/api_login_facade.dart';
import 'package:cubtale_challenge/infrastructure/search/search_repository.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  ILoginFacade get loginFacade => ApiLoginFacade();

  @lazySingleton
  ISearchRepository get searchRepository => SearchRepository();
}
