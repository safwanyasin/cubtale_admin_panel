import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:book_ai/application/auth/login/login_state.dart';
import 'package:cubtale_challenge/domain/auth/login/i_login_facade.dart';
import 'package:cubtale_challenge/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/login/login_failure.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  late final ILoginFacade _loginFacade;

  LoginCubit(
    this._loginFacade,
  ) : super(LoginState.initial());

  // reflecting the updated user input in the state as it it typed
  void updateUsername(String typedUsername) {
    emit(
      state.copyWith(
        username: Username(typedUsername),
        loginFailureOrSuccessOption: none(),
      ),
    );
  }

  void updatePassword(String typedPassword) {
    emit(
      state.copyWith(
        password: Password(typedPassword),
        loginFailureOrSuccessOption: none(),
      ),
    );
  }

  // calls the perform login function that calls the appropriate sign in functions from the Facade and handles the responses
  Future<void> login() async {
    await _performLogin();
  }

  Future<void> _performLogin() async {
    final username = state.username;
    Password? password = state.password;

    emit(
      state.copyWith(
        isSubmitting: true,
      ),
    );

    final loginResult = await _loginFacade.signInWithUsernameAndPassword(
            username: username, password: password);

    if (loginResult.isLeft()) {
      return loginResult.fold((failure) {
        failure.maybeWhen(
            cancelledByUser: () => emit(
                  state.copyWith(
                    isSubmitting: false,
                    loginFailureOrSuccessOption:
                        some(left(const LoginFailure.cancelledByUser())),
                  ),
                ),
            serverError: () => emit(
                  state.copyWith(
                    isSubmitting: false,
                    loginFailureOrSuccessOption:
                        some(left(const LoginFailure.serverError())),
                  ),
                ),
            invalidUsernameAndPasswordCombination: () => emit(
                  state.copyWith(
                    isSubmitting: false,
                    loginFailureOrSuccessOption: some(left(const LoginFailure
                        .invalidUsernameAndPasswordCombination())),
                  ),
                ),
            otherFailure: (m) => emit(
                  state.copyWith(
                    isSubmitting: false,
                    loginFailureOrSuccessOption:
                        some(left(LoginFailure.otherFailure(m))),
                  ),
                ),
            orElse: () => print("some unknown error occurred"));
      }, (_) => {});
    } else {
      emit(
        state.copyWith(
          isSubmitting: false,
          loginFailureOrSuccessOption: some(right(unit)),
        ),
      );
    }
  }
}
