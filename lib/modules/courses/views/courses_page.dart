import 'package:auto_route/auto_route.dart';
import 'package:education/common/widgets/empty_view.dart';
import 'package:education/modules/courses/cubits/courses_cubit.dart';
import 'package:education/modules/courses/views/widgets/course_widget.dart';
import 'package:education/modules/courses/views/widgets/courses_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage() : super(key: const Key('CoursesPageKey'));

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final cubit = context.read<CoursesCubit>();
    return BlocConsumer<CoursesCubit, CoursesState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: cubit.getCourses,
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                floating: true,
                snap: true,
                title: Text('Courses'),
                centerTitle: true,
              ),
              CoursesView(state: state),
            ],
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class CoursesView extends StatelessWidget {
  const CoursesView({required this.state, super.key});

  final CoursesState state;

  @override
  Widget build(BuildContext context) {
    if (state is CoursesLoaded) {
      final courses = (state as CoursesLoaded).courses;
      return SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return CourseWidget(course: courses[index]);
          },
          childCount: courses.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      );
    } else if (state is CoursesEmpty) {
      return const SliverFillRemaining(child: EmptyView());
    } else if (state is CoursesLoading || state is CoursesInitial) {
      return const CoursesShimmerLoading();
    } else if (state is CoursesFailure) {
      final failure = (state as CoursesFailure).failure;
      return SliverFillRemaining(
        child: Center(child: Text('A error occurred: ${failure.message}')),
      );
    } else {
      return const SliverFillRemaining();
    }
  }
}
