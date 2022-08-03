import 'package:education/common/widgets/loading_views.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class CoursesShimmerLoading extends StatelessWidget {
  const CoursesShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: ShimmerGridLoading(
        child: Padding(
          padding: const EdgeInsets.only(bottom: Dimensions.paddingSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Expanded(
                child: ColoredBox(
                  color: Colors.white,
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              Container(
                width: double.infinity,
                height: 10,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              Container(
                width: double.infinity,
                height: 10,
                color: Colors.white,
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              Container(
                width: 80,
                height: 10,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
