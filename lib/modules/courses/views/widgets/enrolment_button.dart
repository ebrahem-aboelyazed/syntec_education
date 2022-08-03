import 'package:education/common/widgets/custom_button.dart';
import 'package:education/modules/courses/cubits/courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnrolmentButton extends StatefulWidget {
  const EnrolmentButton({required this.hasEnrolled, super.key});

  final bool hasEnrolled;

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
        onPressed: cubit.navigateToCurriculum,
      );
    } else {
      return CustomButton(
        text: 'Enroll',
        onPressed: () async {
          final success = await cubit.enrollInCourse();
          setState(() => enrolled = success);
        },
      );
    }
  }
}
