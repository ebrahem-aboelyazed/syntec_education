import 'package:auto_route/auto_route.dart';
import 'package:education/common/widgets/custom_button.dart';
import 'package:education/modules/courses/cubits/courses_cubit.dart';
import 'package:education/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnrolmentButton extends StatefulWidget {
  const EnrolmentButton({
    required this.hasEnrolled,
    required this.courseId,
    super.key,
  });

  final bool hasEnrolled;
  final int courseId;

  @override
  State<EnrolmentButton> createState() => _EnrolmentButtonState();
}

class _EnrolmentButtonState extends State<EnrolmentButton> {
  bool enrolled = false;

  @override
  void initState() {
    super.initState();
    enrolled = widget.hasEnrolled;
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CoursesCubit>();
    if (enrolled) {
      return CustomButton(
        text: 'Go To Course',
        onPressed: () {
          context.pushRoute(CurriculumRoute());
        },
      );
    } else {
      return CustomButton(
        text: 'Enroll',
        onPressed: () async {
          final success = await cubit.enrollInCourse(
            widget.courseId,
            (enrolled) => context.pushRoute(CurriculumRoute()),
          );
          setState(() => enrolled = success);
        },
      );
    }
  }
}
