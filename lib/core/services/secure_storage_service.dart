// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class SecureStorageService {
//   final FlutterSecureStorage _storage = const FlutterSecureStorage();
//   String? _cachedToken;

//   Future<void> saveToken(String token) async {
//     _cachedToken = token;
//     await _storage.write(key: 'token', value: token);
//   }

//   Future<String?> getToken() async {
//     if (_cachedToken != null) {
//       return _cachedToken;
//     } else {
//       _cachedToken = await _storage.read(key: 'token');
//       return _cachedToken;
//     }
//   }

//   Future<void> deleteToken() async {
//     _cachedToken = null;
//     await _storage.delete(key: 'token');
//   }
// }
