import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

class InOutLoading extends StatelessWidget {
  const InOutLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitThreeInOut(
        color: Colors.cyan,
      ),
    );
  }
}

class FoldingCubeLoading extends StatelessWidget {
  const FoldingCubeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitFoldingCube(
        color: Colors.cyan,
      ),
    );
  }
}

class FavoritesLoading extends StatelessWidget {
  const FavoritesLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitPumpingHeart(
        color: Colors.redAccent,
      ),
    );
  }
}

class ShimmerGridLoading extends StatelessWidget {
  const ShimmerGridLoading({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: GridView.builder(
        itemBuilder: (_, __) => Padding(
          padding: const EdgeInsets.only(bottom: Dimensions.paddingSmall),
          child: child,
        ),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
      ),
    );
  }
}

class ShimmerListLoading extends StatelessWidget {
  const ShimmerListLoading({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: ListView.builder(
        itemBuilder: (_, __) => Padding(
          padding: const EdgeInsets.only(bottom: Dimensions.paddingSmall),
          child: child,
        ),
        itemCount: 10,
      ),
    );
  }
}

/*
Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(width: 48, height: 48, color: Colors.white),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSmall,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 8,
                      color: Colors.white,
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    Container(
                      width: double.infinity,
                      height: 8,
                      color: Colors.white,
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                    Container(
                      width: 40,
                      height: 8,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
 */

/*
Padding(
          padding: const EdgeInsets.only(bottom: Dimensions.paddingSmall),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
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
 */
