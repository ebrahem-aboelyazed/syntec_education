import 'package:education/common/widgets/cached_image.dart';
import 'package:education/common/widgets/custom_future_builder.dart';
import 'package:education/common/widgets/details_loading_view.dart';
import 'package:education/modules/courses/courses.dart';
import 'package:education/modules/courses/cubits/courses_cubit.dart';
import 'package:education/modules/courses/views/widgets/enrolment_button.dart';
import 'package:education/modules/courses/views/widgets/sections_overview.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CoursesCubit>();
    return Scaffold(
      body: SafeArea(
        child: CustomFutureBuilder<List<dynamic>>(
          future: cubit.getCourseDetails(),
          onLoading: const DetailsLoadingView(),
          onSuccess: (snapshot) {
            final course = snapshot.data![0] as Course;
            final sections = snapshot.data![1] as List<Section>;
            final hasEnrolled = snapshot.data![2] as bool;
            /*final Color dominateColor = Colors.black;
            final style = dominateColor.computeLuminance() > 0.5
                ? SystemUiOverlayStyle.light
                : SystemUiOverlayStyle.dark;*/
            return Scaffold(
              bottomSheet: EnrolmentButton(hasEnrolled: hasEnrolled),
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: MediaQuery.of(context).size.height * 0.30,
                    elevation: 0,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(
                        course.name,
                        maxLines: 2,
                      ),
                      centerTitle: true,
                      background: CachedImage(course.image),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSmall,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          const SizedBox(height: Dimensions.paddingDefault),
                          ListTile(
                            title: const Text('About This Course'),
                            subtitle: Text(course.description),
                          ),
                          const SizedBox(height: Dimensions.paddingDefault),
                          const ListTile(title: Text('Curriculum Overview')),
                          const SizedBox(height: Dimensions.paddingSmall),
                          SectionsOverview(sections: sections),
                          const SizedBox(height: Dimensions.paddingSmall),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

/*
persistentFooterButtons: [
        ElevatedButton(
          onPressed: () {
            Get.toNamed('${Get.currentRoute}${Paths.curriculum}');
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            fixedSize: Size(MediaQuery.of(context).size.width, 50),
          ),
          child: const Text('Enroll'),
        ),
      ],
 */
