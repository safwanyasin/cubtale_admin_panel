import 'package:auto_route/auto_route.dart';
import 'package:cubtale_challenge/application/auth/auth_cubit.dart';
import 'package:cubtale_challenge/application/auth/login/login_cubit.dart';
import 'package:cubtale_challenge/injection.dart';
import 'package:cubtale_challenge/presentation/pages/login/widgets/nav_bar.dart';
import 'package:cubtale_challenge/presentation/reusable_components/buttons/primary_button.dart';
import 'package:cubtale_challenge/presentation/reusable_components/error_popup.dart';
import 'package:cubtale_challenge/presentation/reusable_components/input/input_field.dart';
import 'package:cubtale_challenge/presentation/routing/router/router.dart';
import 'package:cubtale_challenge/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).cardColor,
        child: Column(
          children: [
            const NavBar(),
            Container(
              height: 930.h,
              child: Center(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.w),
                      color: Theme.of(context).primaryColorLight,
                    ),
                    padding: EdgeInsets.all(80.w),
                    width: 900.w,
                    height: 500.h,
                    child: BlocProvider(
                      create: (context) => getIt<LoginCubit>(),
                      child: BlocConsumer<LoginCubit, LoginState>(
                          listener: (context, state) {
                        state.loginFailureOrSuccessOption.fold(
                          () {},
                          (either) => either.fold((failure) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return ErrorPopup(
                                    errorMessage: failure.map(
                                      cancelledByUser: (_) =>
                                          'Operation cancelled',
                                      serverError: (_) => 'Server error',
                                      invalidUsernameAndPasswordCombination:
                                          (_) =>
                                              'Email or password are incorrect!',
                                      otherFailure: (_) =>
                                          'An unexpected error occurred!',
                                    ),
                                    onClose: () => Navigator.of(context).pop(),
                                  );
                                });
                          }, (_) {
                            print('login successful');
                            context.read<AuthCubit>().authCheckRequested();
                            AutoRouter.of(context).replace(const HomeRoute());
                          }),
                        );
                      }, builder: (context, state) {
                        return Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InputField(
                                showError: state.isSubmitting,
                                labelText: 'Username',
                                onChanged: (username) => context
                                    .read<LoginCubit>()
                                    .updateUsername(username),
                                validator: (_) => context
                                    .read<LoginCubit>()
                                    .state
                                    .username
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        empty: (_) =>
                                            'Username cannot be empty!',
                                        invalidValue: (_) {
                                          return 'Invalid username';
                                        },
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                              SizedBox(height: 20.h),
                              InputField(
                                obscureText: true,
                                showError: state.isSubmitting,
                                labelText: 'Password',
                                onChanged: (password) => context
                                    .read<LoginCubit>()
                                    .updatePassword(password),
                                validator: (_) => context
                                    .read<LoginCubit>()
                                    .state
                                    .password
                                    .value
                                    .fold(
                                        (f) => f.maybeMap(
                                              empty: (_) =>
                                                  'Password cannot be empty!',
                                              orElse: () => null,
                                            ),
                                        (_) => null),
                              ),
                              SizedBox(height: 30.h),
                              PrimaryButton(
                                  onPressed: () {
                                    //if (_formKey.currentState!.validate()) {

                                    context.read<LoginCubit>().login();
                                    //}
                                  },
                                  text: 'Login'),
                            ],
                          ),
                        );
                      }),
                    )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
