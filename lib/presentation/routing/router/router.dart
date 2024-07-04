import 'package:auto_route/auto_route.dart';
import 'package:cubtale_challenge/presentation/pages/home/home_screen.dart';
import 'package:cubtale_challenge/presentation/pages/login/login_screen.dart';
import 'package:cubtale_challenge/presentation/pages/splash/splash_screen.dart';
import 'package:cubtale_challenge/presentation/pages/test/test_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:cubtale_challenge/presentation/pages/login/login_screen.dart';
// import 'package:book_ai/presentation/router/router.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(page: SplashRoute.page, initial: true),
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: HomeRoute.page,
        ),
        CustomRoute(
          page: TestingRoute.page,
        )
      ];
}
