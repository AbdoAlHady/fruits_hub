import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/error/exceptions.dart';
import 'package:fruits_hub/core/error/firebase_exception_handler.dart';
import 'package:fruits_hub/core/helper/logger_helper.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';

class FirestoreService implements DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required Map<String, dynamic> data, required String path}) async {
    try {
      await _db.collection(path).add(data);
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
}
