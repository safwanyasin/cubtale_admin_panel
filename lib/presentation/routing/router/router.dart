import 'package:auto_route/auto_route.dart';
import 'package:cubtale_challenge/presentation/pages/login/login.dart';
import 'package:flutter/foundation.dart';
import 'package:cubtale_challenge/presentation/pages/login/login.dart';
// import 'package:book_ai/presentation/router/router.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: LoginRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];
}
