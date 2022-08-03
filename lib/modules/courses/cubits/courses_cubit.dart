import 'package:bloc/bloc.dart';
import 'package:education/data/data.dart';
import 'package:education/helpers/helpers.dart';
import 'package:education/modules/courses/models/course.dart';
import 'package:education/modules/courses/models/section.dart';
import 'package:education/modules/courses/services/courses_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart' show Color;

part 'courses_state.dart';

class CoursesCubit extends Cubit<CoursesState> {
  CoursesCubit() : super(CoursesInitial());

  final CoursesService _coursesService = CoursesService.instance;
  final MediaHelper _mediaHelper = MediaHelper.instance;

  Future<void> getCourses() async {
    emit(CoursesLoading());
    final response = await _coursesService.getCourses();
    response.fold(
      onFailure,
      (courses) {
        final hasData = courses.isNotEmpty;
        emit(hasData ? CoursesLoaded(courses) : CoursesEmpty());
      },
    );
  }

  Future<Course> getCourseById() async {
    //TODO: add id here
    //final id = int.tryParse(Get.parameters['course_id']!);
    final response = await _coursesService.getCourseById(id: 1);
    return response.fold(
      (failure) {
        onFailure(failure);
        throw Exception(failure.message);
      },
      (course) => course,
    );
  }

  Future<List<dynamic>> getCourseDetails() async {
    final course = await getCourseById();
    final sections = await getCourseSections();
    //final dominateColor = await getImageDominateColor(course.image);
    final enrolled = await hasEnrolledInCourse();
    return [course, sections, enrolled];
  }

  Future<List<Section>> getCourseSections() async {
    //TODO: add id here
    //final id = int.tryParse(Get.parameters['course_id']!);
    final response = await _coursesService.getCourseSections(id: 1);
    return response.fold(
      (failure) {
        onFailure(failure);
        throw Exception(failure.message);
      },
      (sections) => sections,
    );
  }

  Future<bool> enrollInCourse() async {
    //TODO: add id here
    //final id = int.tryParse(Get.parameters['course_id']!);
    final response = await _coursesService.enrollInCourse(id: 1);
    return response.fold(
      (failure) {
        onFailure(failure);
        return false;
      },
      (enrolled) {
        if (enrolled) {
          navigateToCurriculum();
        }
        return true;
      },
    );
  }

  Future<bool> hasEnrolledInCourse() async {
    //TODO: add id here
    //final id = int.tryParse(Get.parameters['course_id']!);
    final response = await _coursesService.hasEnrolledInCourse(id: 1);
    return response.fold(
      (failure) => false,
      (hasEnrolled) => hasEnrolled,
    );
  }

  void navigateToCurriculum() {
    //TODO: Add Navigation here
    //Get.toNamed('${Get.currentRoute}${Paths.curriculum}');
  }

  Future<Color> getImageDominateColor(String url) =>
      _mediaHelper.getImagePalette(url);

  void onFailure(Failure failure) => emit(CoursesFailure(failure));
}
