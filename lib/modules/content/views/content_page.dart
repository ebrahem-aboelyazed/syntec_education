import 'package:education/common/widgets/empty_view.dart';
import 'package:education/common/widgets/loading_views.dart';
import 'package:education/modules/content/cubits/content_cubit.dart';
import 'package:education/modules/content/views/widgets/content_article_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Content'),
        elevation: 0,
      ),
      body: BlocBuilder<ContentCubit, ContentState>(
        builder: (context, state) {
          if (state is ContentLoaded) {
            return ContentArticleView(content: state.content);
          } else if (state is ContentLoading || state is ContentInitial) {
            return ShimmerListLoading(
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.white,
              ),
            );
          } else if (state is ContentFailure) {
            //TODO: Make ErrorView
            return Center(child: Text(state.failure.message));
          } else {
            return const EmptyView();
          }
        },
      ),
    );
  }
}
