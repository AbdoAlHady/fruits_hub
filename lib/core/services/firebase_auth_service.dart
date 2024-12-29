import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/error/exceptions.dart';
import 'package:fruits_hub/core/error/firebase_exception_handler.dart';

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
}
