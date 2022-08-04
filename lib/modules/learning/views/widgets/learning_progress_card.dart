import 'package:auto_route/auto_route.dart';
import 'package:education/modules/learning/models/learning_progress.dart';
import 'package:education/routes/app_router.gr.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class LearningProgressCard extends StatelessWidget {
  const LearningProgressCard({required this.learningProgress, super.key});

  final LearningProgress learningProgress;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
          context.pushRoute(CurriculumRoute());
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: Dimensions.paddingSmall,
            horizontal: Dimensions.paddingDefault,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Dimensions.paddingDefault),
              Text(
                learningProgress.teacherName,
                maxLines: 1,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              const SizedBox(height: Dimensions.paddingSmall),
              SizedBox(
                height: 60,
                child: Text(
                  learningProgress.courseTitle,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              const SizedBox(height: Dimensions.paddingExtraLarge),
              const LinearProgressIndicator(
                value: 0.6,
                minHeight: 10,
                backgroundColor: Colors.grey,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
