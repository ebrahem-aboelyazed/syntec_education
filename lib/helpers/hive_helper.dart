import 'dart:convert';
import 'dart:typed_data';

import 'package:education/modules/user/user.dart';
import 'package:education/utils/app_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper {
  HiveHelper._();

  static final HiveHelper _hiveHelper = HiveHelper._();

  static HiveHelper get instance => _hiveHelper;

  // Boxes getters
  Box<dynamic> get settingsBox => Hive.box(AppConstants.settings);

  Box<User?> get userBox => Hive.box<User?>(AppConstants.user);

  Box<UserCredentials?> get credentialsBox =>
      Hive.box<UserCredentials?>(AppConstants.userCredentials);

  // Helpers Methods
  bool get hasLoggedIn => userBox.isNotEmpty && userBox.values.first != null;

  User get currentUser => hasLoggedIn ? userBox.values.first! : const User();

  Future<bool> get hasShownIntro async =>
      await settingsBox.get(AppConstants.hasShownIntro, defaultValue: false)
          as bool;

  // Initializations Methods
  Future<Uint8List> _setupSecureKey() async {
    const secureStorage = FlutterSecureStorage();
    final containsEncryptionKey =
        await secureStorage.containsKey(key: AppConstants.secureBoxKey);
    if (!containsEncryptionKey) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: AppConstants.secureBoxKey,
        value: base64UrlEncode(key),
      );
    }
    final value = await secureStorage.read(key: AppConstants.secureBoxKey);
    return base64Url.decode(value!);
  }

  Future<Box<User?>> initializeUserBox() async {
    final encryptionKey = await _setupSecureKey();
    return Hive.openBox<User?>(
      AppConstants.user,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  Future<Box<dynamic>> initializeSettingsBox() async {
    return Hive.openBox<dynamic>(AppConstants.settings);
  }

  Future<Box<UserCredentials?>> initializeCredentialsBox() async {
    final encryptionKey = await _setupSecureKey();
    return Hive.openBox<UserCredentials?>(
      AppConstants.userCredentials,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  Future<void> initializeHiveAndAdapters() async {
    await Hive.initFlutter();
    Hive
      ..registerAdapter(UserAdapter())
      ..registerAdapter(UserCredentialsAdapter());
  }

  Future<void> saveUserData(User user) async {
    final userBox = Hive.box<User?>(AppConstants.user);
    if (userBox.isNotEmpty) {
      await userBox.clear();
    }
    await userBox.add(user);
  }

  Future<void> saveUserCredentials(UserCredentials userCredentials) async {
    final credentialsBox =
        Hive.box<UserCredentials?>(AppConstants.userCredentials);
    if (credentialsBox.isNotEmpty) {
      await credentialsBox.clear();
    }
    await credentialsBox.add(userCredentials);
  }

  Future<void> clearUserData() async {
    await Hive.box<UserCredentials?>(AppConstants.userCredentials).clear();
    await Hive.box<User?>(AppConstants.user).clear();
  }
}
