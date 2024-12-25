import 'package:flutter/material.dart';
import 'package:fruits_hub/app.dart';
import 'package:fruits_hub/core/services/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(const FruitsHubApp());
}
