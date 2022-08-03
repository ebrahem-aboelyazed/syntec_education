import 'dart:convert';

import 'package:education/helpers/helpers.dart';
import 'package:education/modules/user/user.dart';
import 'package:education/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'package:jwt_decoder/jwt_decoder.dart';

class TokenManager {
  TokenManager._();

  static final TokenManager _tokenManager = TokenManager._();

  static TokenManager get instance => _tokenManager;

  final HiveHelper _hiveHelper = HiveHelper.instance;

  Future<String?> getAccessToken() async {
    try {
      final box = _hiveHelper.credentialsBox;
      final userCredentials = box.isNotEmpty ? box.values.first : null;
      if (userCredentials != null) {
        final remainingTime =
            JwtDecoder.getRemainingTime(userCredentials.access).inSeconds;
        return JwtDecoder.isExpired(userCredentials.access) ||
                remainingTime < 60
            ? await _refreshToken(userCredentials.refresh)
            : userCredentials.access;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<String?> _refreshToken(String refresh) async {
    final response = await http.post(
      Uri.parse('${Endpoints.baseUrl}${Endpoints.refresh}'),
      body: {'refresh': refresh},
    );
    return _handleResponse(response, refresh);
  }

  Future<String?> _handleResponse(
    http.Response response,
    String refresh,
  ) async {
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final access = body['access'] as String;
      final credentials = UserCredentials(access: access, refresh: refresh);
      await _hiveHelper.saveUserCredentials(credentials);
      return credentials.access;
    } else if (response.statusCode == 401) {
      await _hiveHelper.clearUserData();
      // Show SnackBar here
      //showErrorSnackBar(const Failure(message: 'Your session has expired'));
      return null;
    } else {
      return null;
    }
  }
}
