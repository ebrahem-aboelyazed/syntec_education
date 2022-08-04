import 'package:auto_route/auto_route.dart';
import 'package:education/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CoursesWrapperRoute(),
        LearningProgressRoute(),
        ProfileRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          iconSize: 20,
          items: const [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bookOpen),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.cloudArrowDown),
              label: 'Downloads',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circleUser),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
