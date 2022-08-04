import 'package:auto_route/auto_route.dart';
import 'package:education/modules/courses/cubits/courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesWrapperPage extends StatelessWidget {
  const CoursesWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoursesCubit>(
      create: (context) => CoursesCubit()..getCourses(),
      child: const AutoRouter(),
    );
  }
}
