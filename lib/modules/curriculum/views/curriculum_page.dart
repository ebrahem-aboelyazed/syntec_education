import 'package:flutter/material.dart';

class CurriculumPage extends StatelessWidget {
  const CurriculumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(),
    );
  }
}

/*
GetBuilder<CurriculumController>(
        init: CurriculumController(),
        initState: (state) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            state.controller?.getCurriculum();
          });
        },
        builder: (controller) {
          return controller.obx(
            (curriculum) {
              if (curriculum != null) {
                return CustomScrollView(
                  slivers: [
                    const SliverAppBar(
                      title: Text('Curriculum'),
                      centerTitle: true,
                      elevation: 0,
                      floating: true,
                      snap: true,
                    ),
                    CurriculumView(curriculum: curriculum),
                  ],
                );
              } else {
                return const EmptyView();
              }
            },
            onLoading: const CurriculumLoadingView(),
            onEmpty: const EmptyView(),
          );
        },
      )
 */
