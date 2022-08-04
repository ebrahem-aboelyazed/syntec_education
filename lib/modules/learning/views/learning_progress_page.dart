import 'package:education/modules/learning/models/learning_progress.dart';
import 'package:education/modules/learning/views/widgets/learning_progress_card.dart';
import 'package:education/utils/dimensions.dart';
import 'package:flutter/material.dart';

class LearningProgressPage extends StatelessWidget {
  const LearningProgressPage()
      : super(key: const Key('CoursesProgressPageKey'));

  List<LearningProgress> get coursesProgress => const [
        LearningProgress(
          teacherName: 'Mr, Ahmed Khaled',
          courseTitle: 'Chemistry course for beginners first Half',
        ),
        LearningProgress(
          teacherName: 'Mr, Ahmed Khaled',
          courseTitle: 'Chemistry course for beginners first Half',
        ),
        LearningProgress(
          teacherName: 'Mr, Ahmed Khaled',
          courseTitle: 'Chemistry course for beginners first Half',
        ),
        LearningProgress(
          teacherName: 'Mr, Ahmed Khaled',
          courseTitle: 'Chemistry course for ',
        ),
        LearningProgress(
          teacherName: 'Mr, Ahmed Khaled',
          courseTitle: 'Chemistry course for beginners first Half',
        ),
        LearningProgress(
          teacherName: 'Mr, Ahmed Khaled',
          courseTitle: 'Chemistry course for beginners first Half',
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          automaticallyImplyLeading: false,
          title: Text('Courses Progress'),
          centerTitle: true,
        ),
        SliverPadding(
          padding: const EdgeInsets.all(Dimensions.paddingLarge),
          sliver: SliverAnimatedList(
            initialItemCount: coursesProgress.length,
            itemBuilder: (context, index, animation) {
              return LearningProgressCard(
                learningProgress: coursesProgress[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
