abstract class DatabaseService {
  Future<void> addData(
      {required Map<String, dynamic> data,
      required String path,
      String? documentId});
  Future<Map<String, dynamic>> getData(
      {required String path, required String documnetId});
}
