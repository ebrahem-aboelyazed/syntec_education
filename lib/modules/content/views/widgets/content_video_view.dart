import 'package:education/common/widgets/loading_views.dart';
import 'package:education/common/widgets/video_player_widget.dart';
import 'package:education/utils/dimensions.dart';
import 'package:education/utils/huge_html.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class ContentVideoView extends StatelessWidget {
  const ContentVideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VideoPlayerWidget(),
        const SizedBox(height: Dimensions.paddingDefault),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(Dimensions.paddingSmall),
            child: HtmlWidget(
              kHtml,
              renderMode: RenderMode.listView,
              onLoadingBuilder: (context, e, value) =>
                  const FoldingCubeLoading(),
            ),
          ),
        ),
      ],
    );
  }
}
