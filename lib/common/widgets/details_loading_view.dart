import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DetailsLoadingView extends StatelessWidget {
  const DetailsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              color: Colors.white,
            ),
            const SizedBox(height: Dimensions.paddingLarge),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimensions.paddingSmall,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingSmall),
                  Container(
                    width: double.infinity,
                    height: 35,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingLarge),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    height: 30,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingExtraLarge),
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingExtraLarge),
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingExtraLarge),
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingExtraLarge),
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingExtraLarge),
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: Dimensions.paddingExtraLarge),
                  Container(
                    width: double.infinity,
                    height: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
