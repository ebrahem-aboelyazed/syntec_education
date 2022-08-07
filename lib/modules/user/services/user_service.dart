import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:education/data/data.dart';
import 'package:education/data/token_manager.dart';
import 'package:education/modules/user/models/auth.dart';
import 'package:education/modules/user/models/user.dart';
import 'package:education/modules/user/models/user_credentials.dart';
import 'package:education/utils/endpoints.dart';
import 'package:http/http.dart' as http;

class UserService {
  UserService._();

  static final UserService _userService = UserService._();

  static UserService get instance => _userService;

  Future<Either<Failure, UserCredentials>> loginUser({
    required LoginModel model,
  }) async {
    try {
      final response = await http.post(
        Uri.parse('${Endpoints.baseUrl}${Endpoints.login}'),
        body: model.toJson(),
      );
      final data = handleResponse(response);
      return data.fold(
        Left.new,
        (r) {
          final json = jsonDecode(r.body) as Map<String, dynamic>;
          return Right(UserCredentials.fromJson(json));
        },
      );
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, User>> registerUser({
    required SignUpModel model,
  }) async {
    try {
      print('Model =====>${model.toJson()}');
      final response = await http.post(
        Uri.parse('${Endpoints.baseUrl}${Endpoints.register}'),
        body: model.toJson(),
      );
      final data = handleResponse(response);
      return data.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as Map<String, dynamic>;
        return Right(User.fromJson(json));
      });
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, User>> getUserInfo() async {
    try {
      final token = await TokenManager.instance.getAccessToken();
      final response = await http.get(
        Uri.parse('${Endpoints.baseUrl}${Endpoints.userInfo}'),
        headers: {'Authorization': 'Bearer $token'},
      );
      final data = handleResponse(response);
      return data.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as Map<String, dynamic>;
        return Right(User.fromJson(json));
      });
    } catch (_) {
      return const Left(Failure());
    }
  }

  Either<Failure, http.Response> handleResponse(http.Response response) {
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      return Right(response);
    } else {
      return Left(
        Failure(
          message: response.reasonPhrase ?? 'Error',
          statusCode: statusCode,
        ),
      );
    }
  }
}

/*
else if (response.status.connectionError) {
      return Left(
        Failure(
          message: 'No internet connection',
          statusCode: statusCode,
        ),
      );
    }
 */
