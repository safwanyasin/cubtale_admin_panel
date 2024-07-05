import 'package:cubtale_challenge/application/auth/auth_cubit.dart';
import 'package:cubtale_challenge/application/search/search_cubit.dart';
import 'package:cubtale_challenge/application/theme/theme_cubit.dart' as cubit_theme;
import 'package:cubtale_challenge/constants.dart';
import 'package:cubtale_challenge/injection.dart';
import 'package:cubtale_challenge/presentation/routing/router/router.dart';
import 'package:cubtale_challenge/presentation/styles/themes.dart' as styles_theme;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(AppConstants.appWidth, AppConstants.appHeight));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCubit>()..authCheckRequested(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<cubit_theme.ThemeCubit>(),
        ),
      ],
      child: BlocBuilder<cubit_theme.ThemeCubit, cubit_theme.AppTheme>(
        builder: (context, themeState) {
          return MaterialApp.router(
            routerConfig: _appRouter.config(),
            debugShowCheckedModeBanner: false,
            title: 'Cubtale Admin Panel',
            theme: styles_theme.AppTheme.lightTheme(),
            darkTheme: styles_theme.AppTheme.darkTheme(),
            themeMode: themeState == cubit_theme.AppTheme.dark ? ThemeMode.dark : ThemeMode.light,
          );
        },
      ),
    );
  }
}
