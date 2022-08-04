import 'package:auto_route/auto_route.dart';
import 'package:education/common/widgets/curriculum_loading_view.dart';
import 'package:education/common/widgets/empty_view.dart';
import 'package:education/modules/curriculum/cubits/curriculum_cubit.dart';
import 'package:education/modules/curriculum/views/widgets/curriculum_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurriculumPage extends StatelessWidget implements AutoRouteWrapper {
  const CurriculumPage({
    @PathParam('course_id') required this.courseId,
    super.key,
  });

  final int courseId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: BlocConsumer<CurriculumCubit, CurriculumState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is CurriculumInitial || state is CurriculumLoading) {
            return const CurriculumLoadingView();
          } else if (state is CurriculumFailure) {
            return Center(child: Text(state.failure.message));
          } else if (state is CurriculumLoaded) {
            return CustomScrollView(
              slivers: [
                const SliverAppBar(
                  title: Text('Curriculum'),
                  centerTitle: true,
                  elevation: 0,
                  floating: true,
                  snap: true,
                ),
                CurriculumView(curriculum: state.curriculum),
              ],
            );
          } else {
            return const EmptyView();
          }
        },
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CurriculumCubit>(
      create: (context) => CurriculumCubit()..getCurriculum(courseId: courseId),
      child: this,
    );
  }
}
