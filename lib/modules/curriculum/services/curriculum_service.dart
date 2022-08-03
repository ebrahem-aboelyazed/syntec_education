import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:education/data/base_service.dart';
import 'package:education/data/failure.dart';
import 'package:education/modules/curriculum/curriculum.dart';
import 'package:education/utils/utils.dart';

class CurriculumService {
  CurriculumService._();

  static final CurriculumService _coursesService = CurriculumService._();

  static CurriculumService get instance => _coursesService;

  final BaseService _baseService = BaseService.instance;

  Future<Either<Failure, Curriculum>> getCurriculum({required int? id}) async {
    try {
      final response = await _baseService.getData(
        '${Endpoints.courses}$id/${Endpoints.curriculum}',
      );
      return response.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as Map<String, dynamic>;
        return Right(Curriculum.fromJson(json));
      });
    } catch (_) {
      return const Left(Failure());
    }
  }
}
