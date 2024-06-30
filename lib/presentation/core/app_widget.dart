import 'package:cubtale_challenge/application/auth/auth_cubit.dart';
import 'package:cubtale_challenge/constants.dart';
import 'package:cubtale_challenge/injection.dart';
import 'package:cubtale_challenge/presentation/routing/router/router.dart';
import 'package:cubtale_challenge/presentation/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(AppConstants.appWidth, AppConstants.appHeight));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCubit>()..authCheckRequested(),
          // create: (context) => getIt<AiGenerateCubit>()..
        ),
      ],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        title: 'Book AI',
        theme: AppTheme.darkTheme(),
        themeMode: ThemeMode.system,
        //home: const TestingScreen()
      ),
    );
  }
}
