import 'package:auto_route/auto_route.dart';
import 'package:cubtale_challenge/application/auth/auth_cubit.dart';
import 'package:cubtale_challenge/presentation/routing/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) async {
            AutoRouter.of(context).replace(
              HomeRoute(),
            );
          },
          unauthenticated: (_) async {
            AutoRouter.of(context).replace(
              LoginRoute(),
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/cubtale_logo.png', height: 100.h),
                  Image.asset('assets/images/cubtale_watermark.png',
                      height: 100.h),
                ],
              ),
              SizedBox(height: 25.h),
              CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
