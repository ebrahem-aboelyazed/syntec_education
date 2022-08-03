import 'package:education/common/widgets/loading_views.dart';
import 'package:education/modules/content/models/content.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class ContentArticleView extends StatelessWidget {
  const ContentArticleView({required this.content, super.key});

  final Content content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.paddingSmall),
      child: HtmlWidget(
        content.data,
        renderMode: RenderMode.listView,
        onLoadingBuilder: (context, e, value) => const FoldingCubeLoading(),
      ),
    );
  }
}
