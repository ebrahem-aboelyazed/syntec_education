import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

/*
GetBuilder<BottomNavController>(
      init: BottomNavController(),
      builder: (BottomNavController controller) {
        return Scaffold(
          bottomNavigationBar: const BottomNav(),
          drawer: const AppDrawer(),
          body: PageTransitionSwitcher(
            child: WillPopScope(
              onWillPop: () async {
                if (controller.currentNavIndex.value != 0) {
                  controller.currentNavIndex.value = 0;
                  return false;
                } else {
                  return true;
                }
              },
              child: PageView(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.currentNavIndex.value = value;
                },
                children: controller.pages,
              ),
            ),
            transitionBuilder: (
              Widget child,
              Animation<double> primaryAnimation,
              Animation<double> secondaryAnimation,
            ) {
              return FadeThroughTransition(
                fillColor: Colors.transparent,
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                child: child,
              );
            },
          ),
        );
      },
    );
 */
