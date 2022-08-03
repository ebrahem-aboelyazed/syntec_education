import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:education/data/base_client.dart';
import 'package:education/data/failure.dart';
import 'package:education/utils/utils.dart';
import 'package:http/http.dart' as http;

class BaseService {
  BaseService._();

  static final BaseService _baseService = BaseService._();

  static BaseService get instance => _baseService;

  final BaseClient _client = BaseClient(http.Client());
  final String baseUrl = Endpoints.baseUrl;

  Future<Either<Failure, http.Response>> postData(
    String endpoint, {
    Object? body,
    Map<String, String>? headers,
    Encoding? encoding,
  }) async {
    try {
      final response = await _client.post(
        Uri.parse('$baseUrl$endpoint'),
        body: body,
        headers: headers,
        encoding: encoding,
      );
      return _handleResponse(response);
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, http.Response>> getData(
    String endpoint, {
    Map<String, String>? headers,
  }) async {
    try {
      final response = await _client.get(
        Uri.parse('$baseUrl$endpoint'),
        headers: headers,
      );
      return _handleResponse(response);
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, http.Response>> putData(
    String endpoint, {
    Object? body,
    Map<String, String>? headers,
    Encoding? encoding,
  }) async {
    try {
      final response = await _client.put(
        Uri.parse('$baseUrl$endpoint'),
        body: body,
        headers: headers,
        encoding: encoding,
      );
      return _handleResponse(response);
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, http.Response>> deleteData(
    String endpoint, {
    Object? body,
    Map<String, String>? headers,
    Encoding? encoding,
  }) async {
    try {
      final response = await _client.delete(
        Uri.parse('$baseUrl$endpoint'),
        body: body,
        headers: headers,
        encoding: encoding,
      );
      return _handleResponse(response);
    } catch (_) {
      return const Left(Failure());
    }
  }

  Either<Failure, http.Response> _handleResponse(http.Response response) {
    final statusCode = response.statusCode;
    switch (statusCode) {
      case 200:
        return Right(response);
      default:
        return Left(
          Failure(
            message: response.reasonPhrase ?? 'Error',
            statusCode: response.statusCode,
          ),
        );
    }
  }
}

/*
case null:
        return Left(
          Failure(message: 'No internet connection', statusCode: statusCode),
        );
 */
