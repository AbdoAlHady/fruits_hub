import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_hub/core/error/exceptions.dart';
import 'package:fruits_hub/core/error/firebase_exception_handler.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../helper/logger_helper.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      logger.e(
          "Exception in FirebaseAuthService.createUserWithEmailAndPassword : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleAuthException(e));
    } catch (e) {
      logger.e(
          "Exception in FirebaseAuthService.createUserWithEmailAndPassword : ${e.toString()}");

      throw CustomException(
          message: FirebaseExceptionHandler.handleGeneralException(e));
    }
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      logger.e(
          "Exception in FirebaseAuthService.signInWithEmailAndPassword : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleAuthException(e));
    } catch (e) {
      logger.e(
          "Exception in FirebaseAuthService.signInWithEmailAndPassword : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleGeneralException(e));
    }
  }

  /// Sign in with Google
  Future<User> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return (await FirebaseAuth.instance.signInWithCredential(credential))
          .user!;
    } on PlatformException catch (e) {
      logger.e(
          "Exception in FirebaseAuthService.signInWithGoogle : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleGoogleSignInException(e));
    } on FirebaseAuthException catch (e) {
      logger.e(
          "Exception in FirebaseAuthService.signInWithGoogle : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleAuthException(e));
    } catch (e) {
      logger.e(
          "Exception in FirebaseAuthService.signInWithGoogle : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleGeneralException(e));
    }
  }

  /// Facebook Sign In
  Future<User> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }

  Future<void> deleteUser() async {
    try {
      await FirebaseAuth.instance.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      logger.e("Exception in FirebaseAuthService.deleteUser : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleAuthException(e));
    } catch (e) {
      logger.e("Exception in FirebaseAuthService.deleteUser : ${e.toString()}");
      throw CustomException(
          message: FirebaseExceptionHandler.handleGeneralException(e));
    }
  }

  bool isLoggedIn() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
