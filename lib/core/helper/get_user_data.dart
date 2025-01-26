import 'dart:convert';

import 'package:fruits_hub/core/services/cache_helper.dart';
import 'package:fruits_hub/core/utils/prefs_keys.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

UserEntity getUserData() {
  var jsonData = CacheHelper().getData(key: PrefsKeys.userData);
  var decodedData = json.decode(jsonData);
  return UserModel.fromJson(decodedData);
}
