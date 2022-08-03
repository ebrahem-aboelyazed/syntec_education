import 'package:education/modules/courses/models/section.dart';
import 'package:education/utils/utils.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SectionsOverview extends StatelessWidget {
  const SectionsOverview({required this.sections, super.key});

  final List<Section> sections;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: sections.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final section = sections[index];
        return ExpandableNotifier(
          initialExpanded: index == 0,
          child: ScrollOnExpand(
            child: ExpandablePanel(
              collapsed: Container(),
              header: ListTile(
                title: Text(
                  section.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 17),
                ),
              ),
              expanded: Column(
                children: [
                  if (section.contents.isNotEmpty)
                    ...section.contents.map(
                      (content) {
                        final requiredTime = parseTime(content.requiredTime);
                        return ListTile(
                          title: Text(content.title),
                          subtitle: Text(
                            '${content.contentType} . '
                            '$requiredTime',
                          ),
                          leading: const Icon(Icons.book),
                          trailing: content.demo
                              ? const Icon(Icons.double_arrow)
                              : null,
                          onTap: () {
                            if (content.demo) {
                              /*Get.toNamed(
                                    '${Routes.content}/${content.id}',
                                  );*/
                            }
                          },
                        );
                      },
                    ),
                ],
              ),
              theme: ExpandableThemeData(
                iconPlacement: ExpandablePanelIconPlacement.right,
                //headerAlignment: ExpandablePanelHeaderAlignment.center,
                hasIcon: section.contents.isNotEmpty,
                tapHeaderToExpand: false,
                tapBodyToCollapse: false,
                tapBodyToExpand: false,
              ),
            ),
          ),
        );
      },
    );
  }
}
