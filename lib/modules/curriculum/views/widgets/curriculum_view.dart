import 'package:education/modules/curriculum/models/curriculum.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class CurriculumView extends StatelessWidget {
  const CurriculumView({required this.curriculum, super.key});

  final Curriculum curriculum;

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedList(
      initialItemCount: curriculum.sections.length,
      itemBuilder: (context, index, animation) {
        final section = curriculum.sections[index];
        return Card(
          elevation: 1,
          child: Column(
            children: [
              ListTile(
                title: Text(
                  section.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 18),
                ),
              ),
              if (section.contents.isNotEmpty)
                ...section.contents.map(
                  (content) {
                    final requiredTime = parseDuration(content.requiredTime);
                    return ListTile(
                      selected: curriculum.lastContent?.id == content.id,
                      title: Text(content.title),
                      subtitle: Text(
                        '${content.contentType} '
                        '. $requiredTime',
                      ),
                      leading: const Icon(Icons.book),
                      trailing: const Icon(Icons.double_arrow),
                      //TODO: Add Navigation here
                      //onTap: () => controller.navigateToContent(content.id),
                    );
                  },
                ),
            ],
          ),
        );
      },
    );
  }
}
