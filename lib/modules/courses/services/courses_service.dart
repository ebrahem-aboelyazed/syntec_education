import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:education/data/base_service.dart';
import 'package:education/data/failure.dart';
import 'package:education/modules/courses/models/course.dart';
import 'package:education/modules/courses/models/section.dart';
import 'package:education/utils/utils.dart';

class CoursesService {
  CoursesService._();

  static final CoursesService _coursesService = CoursesService._();

  static CoursesService get instance => _coursesService;

  final BaseService _baseService = BaseService.instance;

  Future<Either<Failure, List<Course>>> getCourses() async {
    try {
      final response = await _baseService.getData(Endpoints.courses);
      return response.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as List<dynamic>;
        final castedData = List<Map<String, dynamic>>.from(json);
        return Right(castedData.map(Course.fromJson).toList());
      });
    } catch (e) {
      print('Error =======>${e.toString()}');
      return const Left(Failure());
    }
  }

  Future<Either<Failure, Course>> getCourseById({required int? id}) async {
    try {
      final response = await _baseService.getData('${Endpoints.courses}$id');
      return response.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as Map<String, dynamic>;
        return Right(Course.fromJson(json));
      });
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, List<Section>>> getCourseSections({
    required int? id,
  }) async {
    try {
      final response = await _baseService.getData(
        '${Endpoints.courses}$id/${Endpoints.sections}',
      );
      return response.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as List<dynamic>;
        final castedData = List<Map<String, dynamic>>.from(json);
        return Right(castedData.map(Section.fromJson).toList());
      });
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, bool>> enrollInCourse({
    required int? id,
  }) async {
    try {
      final response = await _baseService.postData(
        '${Endpoints.courses}$id/${Endpoints.enroll}',
      );
      return response.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as Map<String, dynamic>;
        final enrolled = json[AppConstants.enrolled] as bool?;
        return Right(enrolled != null && enrolled);
      });
    } catch (_) {
      return const Left(Failure());
    }
  }

  Future<Either<Failure, bool>> hasEnrolledInCourse({
    required int? id,
  }) async {
    try {
      final response = await _baseService.getData(
        '${Endpoints.courses}$id/${Endpoints.enroll}',
      );
      return response.fold(Left.new, (r) {
        final json = jsonDecode(r.body) as Map<String, dynamic>;
        final enrolled = json[AppConstants.enrolled] as bool?;
        return Right(enrolled != null && enrolled);
      });
    } catch (_) {
      return const Left(Failure());
    }
  }
}
