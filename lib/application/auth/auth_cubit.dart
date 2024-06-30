import 'package:cubtale_challenge/domain/auth/login/i_login_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  late final ILoginFacade _loginFacade;

  AuthCubit(this._loginFacade) : super(const AuthState.initial());

  // checks the users authentication status and updates the state accordingly
  void authCheckRequested() async {
    final userOption = await _loginFacade.getSignedInUser();
    // if (userOption.isSome()) {
    //   isVerified = await _loginFacade.checkIfVerified();
    //   if (isVerified) {
    //     userDoc = await _loginFacade.getUser();
    //   }
    // }
    dynamic userDoc;
    if (userOption.isSome()) {
      userDoc = await _loginFacade.getUser();
    }
    emit(userOption.fold(
      () => const AuthState.unauthenticated(),
      (a) {
        return AuthState.authenticated(userDoc);
      },
    ));
  }

  void getUserDetails() async {}
  void signedOut() async {
    await _loginFacade.signOut();
    emit(
      const AuthState.unauthenticated(),
    );
  }
}
