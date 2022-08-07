import 'package:auto_route/auto_route.dart';
import 'package:education/common/widgets/cached_image.dart';
import 'package:education/modules/courses/courses.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({required this.course, super.key});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.parent<StackRouter>()?.pushNamed('/course/${course.id}');

      },
      child: Card(
        elevation: 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CachedImage(course.image),
            ),
            const SizedBox(height: 2),
            Text(
              course.name,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            Text(
              course.summary,
              style: Theme.of(context).textTheme.bodyText2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: Dimensions.paddingSmall),
          ],
        ),
      ),
    );
  }
}
