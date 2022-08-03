import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:education/data/base_service.dart';
import 'package:education/data/failure.dart';
import 'package:education/modules/content/models/content.dart';
import 'package:education/utils/endpoints.dart';

class ContentService {
  ContentService._();

  static final ContentService _contentService = ContentService._();

  static ContentService get instance => _contentService;

  final BaseService _baseService = BaseService.instance;

  Future<Either<Failure, Content>> getContentById({
    required int? id,
  }) async {
    try {
      final response = await _baseService.getData('${Endpoints.content}$id');
      return response.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as Map<String, dynamic>;
        return Right(Content.fromJson(json));
      });
    } catch (_) {
      return const Left(Failure());
    }
  }
}
