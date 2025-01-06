import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/error/exceptions.dart';
import 'package:fruits_hub/core/error/firebase_exception_handler.dart';
import 'package:fruits_hub/core/helper/logger_helper.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';

class FirestoreService implements DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required Map<String, dynamic> data,
      required String path,
      String? documentId}) async {
    try {
      if (documentId != null) {
        await _db.collection(path).doc(documentId).set(data);
      } else {
        await _db.collection(path).add(data);
      }
      logger.i('Data Added Successfully To Firestore Collection: $path');
    } on FirebaseException catch (e) {
      logger.e('Error From FirestoreService.addData: $e');
      throw CustomException(
          message: FirebaseExceptionHandler.handleDatabaseException(e));
    } catch (e) {
      logger.e('Error From FirestoreService.addData: $e');
      throw CustomException(message: "لقد حدث خطأ ما, يرجى المحاولة مرة ثانية");
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documnetId}) async {
    try {
      final data = await _db.collection(path).doc(documnetId).get();
      logger.i('Data Fetched Successfully From Firestore Collection: $path');
      return data.data() as Map<String, dynamic>;
    } on FirebaseException catch (e) {
      logger.e('Error From FirestoreService.getData: $e');
      throw CustomException(
          message: FirebaseExceptionHandler.handleDatabaseException(e));
    } catch (e) {
      logger.e('Error From FirestoreService.getData: $e');
      throw CustomException(message: "لقد حدث خطأ ما, يرجى المحاولة مرة ثانية");
    }
  }

  @override
  Future<bool> checkIfDataExist(
      {required String path, required String documnetId}) async {
    var data = await _db.collection(path).doc(documnetId).get();
    return data.exists;
  }
}
