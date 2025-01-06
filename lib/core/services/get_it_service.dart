import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/services/firestore_service.dart';
import 'package:fruits_hub/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:fruits_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  // Firebase Auth Service
  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  // Databse Service
  getIt.registerLazySingleton<DatabaseService>(() => FirestoreService());
  // Auth Repo
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(
      service: getIt<FirebaseAuthService>(),
      dataBase: getIt<DatabaseService>()));
}
