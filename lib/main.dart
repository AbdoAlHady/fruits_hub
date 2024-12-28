import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/app.dart';
import 'package:fruits_hub/core/services/cache_helper.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CacheHelper().init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await initGetIt();
  runApp(const FruitsHubApp());
}
