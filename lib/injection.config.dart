// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cubtale_challenge/application/auth/auth_cubit.dart' as _i10;
import 'package:cubtale_challenge/application/auth/login/login_cubit.dart'
    as _i11;
import 'package:cubtale_challenge/application/search/search_cubit.dart' as _i9;
import 'package:cubtale_challenge/application/theme/theme_cubit.dart' as _i3;
import 'package:cubtale_challenge/domain/auth/login/i_login_facade.dart' as _i6;
import 'package:cubtale_challenge/domain/search/i_search_repository.dart'
    as _i7;
import 'package:cubtale_challenge/infrastructure/auth/login/api_login_facade.dart'
    as _i4;
import 'package:cubtale_challenge/infrastructure/injectable_module.dart'
    as _i12;
import 'package:cubtale_challenge/infrastructure/search/search_repository.dart'
    as _i8;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i3.ThemeCubit>(() => _i3.ThemeCubit());
    gh.lazySingleton<_i4.ApiLoginFacade>(() => _i4.ApiLoginFacade());
    gh.lazySingleton<_i5.Dio>(() => injectableModule.dio);
    gh.lazySingleton<_i6.ILoginFacade>(() => injectableModule.loginFacade);
    gh.lazySingleton<_i7.ISearchRepository>(
        () => injectableModule.searchRepository);
    gh.lazySingleton<_i8.SearchRepository>(() => _i8.SearchRepository());
    gh.factory<_i9.SearchCubit>(
        () => _i9.SearchCubit(gh<_i7.ISearchRepository>()));
    gh.factory<_i10.AuthCubit>(() => _i10.AuthCubit(gh<_i6.ILoginFacade>()));
    gh.factory<_i11.LoginCubit>(() => _i11.LoginCubit(gh<_i6.ILoginFacade>()));
    return this;
  }
}

class _$InjectableModule extends _i12.InjectableModule {}
