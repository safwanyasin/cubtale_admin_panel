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
    String username = '';
    String password = '';
    if (userOption.isSome()) {
      userOption.fold(() {}, (a) { 
        username = a['username'];
        password = a['password'];
      });
      userDoc = await _loginFacade.getUser(username, password);
    }
    // print('doing authcheck');
    // print('usernm is' + username);

    emit(userOption.fold(
      () => const AuthState.unauthenticated(),
      (a) {
        if (userDoc != null) {
          return AuthState.authenticated(userDoc);
        } else {
          return const AuthState.unauthenticated();
        }
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
