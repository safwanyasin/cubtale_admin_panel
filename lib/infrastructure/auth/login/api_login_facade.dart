// this facade is in infrastructure layer because it deals with third parties

import 'dart:convert';

import 'package:cubtale_challenge/domain/auth/login/i_login_facade.dart';
import 'package:cubtale_challenge/domain/auth/login/login_failure.dart';
import 'package:cubtale_challenge/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import './firebase_user_mapper.dart';

@lazySingleton
class ApiLoginFacade implements ILoginFacade {
  ApiLoginFacade();
  // gets the details of the signed in user
  @override
  Future<Option<dynamic>> getSignedInUser() async =>
      optionOf(null); // TODO: fix this

  // handles user login with email in firebase
  @override
  Future<Either<LoginFailure, Unit>> signInWithUsernameAndPassword(
      {required Username username, required Password password}) async {
    final usernameStr = username.getOrCrash();
    final passwordStr = password.getOrCrash();
    // converting the exceptions to failures
    try {
      final dio = Dio();
      final Response response = await dio.get(
        "https://p7y0pin0cl.execute-api.us-east-2.amazonaws.com/default/AdminPanelLogin",
        data: {
          'username': usernameStr,
          'password': passwordStr,
        },
      );
      final data = jsonDecode(response.data);
      print(response.data);
      if (data['error_code'] == "1099") {
        return left(const LoginFailure.invalidUsernameAndPasswordCombination());
      } else {
        return right(unit);
        // TODO: save the data or do something with it
      }
    } catch (e) {
      print(e);
      return left(const LoginFailure.serverError());
    }
  }

  // @override
  // Future<Either<ValueFailure, DocumentSnapshot>> getUser() async {
  //   final userDoc = await FirebaseFirestore.instance.userDocument();
  //   final user = await userDoc.get();
  //   return right(user);
  // }
  // gets snapshot of the user
  @override
  Future<dynamic> getUser() async {
    // final userDetails = await FirebaseFirestore.instance.userDocument();
    // final snapshot = await userDetails.get();
    // return snapshot;
  }

  // signs out the user
  @override
  Future<void> signOut() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.remove('apiKey');
    // await _firebaseAuth.signOut();
    // await _googleSignIn.signOut();
    // return Future.wait([
    //   _firebaseAuth.signOut(),
    //   _googleSignIn.signOut(),
    // ]);
  }
}
