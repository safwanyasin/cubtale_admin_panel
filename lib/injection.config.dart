// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cubtale_challenge/application/auth/auth_cubit.dart' as _i6;
import 'package:cubtale_challenge/application/auth/login/login_cubit.dart'
    as _i7;
import 'package:cubtale_challenge/domain/auth/login/i_login_facade.dart' as _i5;
import 'package:cubtale_challenge/infrastructure/auth/login/api_login_facade.dart'
    as _i3;
import 'package:cubtale_challenge/infrastructure/injectable_module.dart' as _i8;
import 'package:dio/dio.dart' as _i4;
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
    gh.lazySingleton<_i3.ApiLoginFacade>(() => _i3.ApiLoginFacade());
    gh.lazySingleton<_i4.Dio>(() => injectableModule.dio);
    gh.lazySingleton<_i5.ILoginFacade>(() => injectableModule.loginFacade);
    gh.factory<_i6.AuthCubit>(() => _i6.AuthCubit(gh<_i5.ILoginFacade>()));
    gh.factory<_i7.LoginCubit>(() => _i7.LoginCubit(gh<_i5.ILoginFacade>()));
    return this;
  }
}

class _$InjectableModule extends _i8.InjectableModule {}
