import 'package:cubtale_challenge/domain/auth/login/login_failure.dart';
import 'package:cubtale_challenge/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

// using i along means that it is just interface with no implementation

abstract class ILoginFacade {
  Future<Option<dynamic>>
      getSignedInUser(); // TODO: replace dynamic with appropriate type
  Future<Either<LoginFailure, Unit>> signInWithUsernameAndPassword({
    required Username username,
    required Password password,
  });
  Future<void> signOut();
  Future<dynamic> getUser(); // TODO: replace dynamic with appropriate type
}
