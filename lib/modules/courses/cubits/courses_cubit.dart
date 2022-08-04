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

  Future<Course> getCourseById(int courseId) async {
    final response = await _coursesService.getCourseById(id: courseId);
    return response.fold(
      (failure) {
        onFailure(failure);
        throw Exception(failure.message);
      },
      (course) => course,
    );
  }

  Future<List<dynamic>> getCourseDetails(int courseId) async {
    final course = await getCourseById(courseId);
    final sections = await getCourseSections(courseId);
    //final dominateColor = await getImageDominateColor(course.image);
    final enrolled = await hasEnrolledInCourse(courseId);
    return [course, sections, enrolled];
  }

  Future<List<Section>> getCourseSections(int courseId) async {
    final response = await _coursesService.getCourseSections(id: courseId);
    return response.fold(
      (failure) {
        onFailure(failure);
        throw Exception(failure.message);
      },
      (sections) => sections,
    );
  }

  Future<bool> enrollInCourse(
    int courseId,
    void Function(bool enrolled) onEnrolled,
  ) async {
    final response = await _coursesService.enrollInCourse(id: courseId);
    return response.fold(
      (failure) {
        onFailure(failure);
        return false;
      },
      (enrolled) {
        if (enrolled) {
          onEnrolled.call(enrolled);
        }
        return true;
      },
    );
  }

  Future<bool> hasEnrolledInCourse(int courseId) async {
    final response = await _coursesService.hasEnrolledInCourse(id: courseId);
    return response.fold(
      (failure) => false,
      (hasEnrolled) => hasEnrolled,
    );
  }

  Future<Color> getImageDominateColor(String url) =>
      _mediaHelper.getImagePalette(url);

  void onFailure(Failure failure) => emit(CoursesFailure(failure));
}
