import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_portfolio/data/constants/local_store_keys.dart';
import 'package:flutter_portfolio/data/constants/secure_storage_keys.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EncryptedCache {
  static late CollectionBox<String> _encryptedWebBox;
  static late Box<String> _encryptedBox;

  static Future<EncryptedCache> getInstance() async {
    await _init();
    return Future.value(EncryptedCache());
  }

  static _init() async {
    const FlutterSecureStorage secureStorage = FlutterSecureStorage();
    String? key = await secureStorage.read(key: SecureStorageKeys.encryption);
    if (key == null) {
      var encryptionKey = Hive.generateSecureKey();
      await secureStorage.write(
          key: SecureStorageKeys.encryption,
          value: base64UrlEncode(encryptionKey));
      await openBoxForPlatform(encryptionKey);
    } else {
      Uint8List encryptionKey = base64Url.decode(key);
      await openBoxForPlatform(encryptionKey);
    }
  }

  static Future<void> openBoxForPlatform(List<int> encryptionKey) async {
    if (!kIsWeb) {
      _encryptedBox = await Hive.openBox<String>(LocalStoreKeys.encryptedBox,
          encryptionCipher: HiveAesCipher(encryptionKey));
    } else {
      final collection = await BoxCollection.open(
        'SensitiveData',
        {LocalStoreKeys.encryptedBox},
        path: './',
        key: HiveAesCipher(encryptionKey),
      );
      _encryptedWebBox = await collection.openBox(LocalStoreKeys.encryptedBox);
    }
  }

  Future<void> cacheToken(String token) async {
    if (!kIsWeb) {
      await _encryptedBox.put(SecureStorageKeys.token, token);
    } else {
      await _encryptedWebBox.put(SecureStorageKeys.token, token);
    }
  }

  Future<String?> getToken() async {
    String? token;
    if (!kIsWeb) {
      token = _encryptedBox.get(SecureStorageKeys.token);
    } else {
      token = await _encryptedWebBox.get(SecureStorageKeys.token);
    }
    return token;
  }

  Future<void> deleteToken() async {
    if (!kIsWeb) {
      _encryptedBox.delete(SecureStorageKeys.token);
    } else {
      await _encryptedWebBox.delete(SecureStorageKeys.token);
    }
  }
}
