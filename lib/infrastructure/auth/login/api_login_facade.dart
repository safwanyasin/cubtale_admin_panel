// this facade is in infrastructure layer because it deals with third parties

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
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
  Future<Option<dynamic>> getSignedInUser() async {
    final prefs = await SharedPreferences.getInstance();
    final timestamp = prefs.getInt('timestamp');
    if (timestamp == null) {
      return optionOf(null);
    } else {
      const expirationDuration = Duration(days: 14);
      final storedTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
      final now = DateTime.now();
      if (now.difference(storedTime) <= expirationDuration) {
        print("attempting ot get the username");
        final username = prefs.getString('username');
        final password = prefs.getString('password');
        print("the username is " + username!);
        return optionOf({
          'username': username,
          'password': password,
        });
      } else {
        await prefs.remove('username');
        await prefs.remove('password');
        await prefs.remove('timestamp');
        return optionOf(null);
      }
    }
  }

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
        final prefs = await SharedPreferences.getInstance();
        print('setting username as ' + usernameStr);
        await prefs.setString('username', usernameStr);
        await prefs.setString('password', passwordStr);
        await prefs.setInt('timestamp', DateTime.now().millisecondsSinceEpoch);
        return right(unit);
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
  Future<dynamic> getUser(String username, String password) async {
     try {
      final dio = Dio();
      final Response response = await dio.get(
        "https://p7y0pin0cl.execute-api.us-east-2.amazonaws.com/default/AdminPanelLogin",
        data: {
          'username': username,
          'password': password,
        },
      );
      final data = jsonDecode(response.data);
      print(response.data);
      return data;
    } catch (e) {
      print(e);
      return null;
    }
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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');
    await prefs.remove('password');
    await prefs.remove('timestamp');
  }
}
