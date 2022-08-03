// import 'package:education/modules/home/controllers/bottom_nav_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
//
// class BottomNav extends GetView<BottomNavController> {
//   const BottomNav({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return BottomNavigationBar(
//         currentIndex: controller.currentNavIndex.value,
//         onTap: (value) => controller.currentNavIndex.value = value,
//         selectedItemColor: Colors.blueAccent,
//         unselectedItemColor: Colors.black,
//         showSelectedLabels: true,
//         showUnselectedLabels: true,
//         type: BottomNavigationBarType.fixed,
//         iconSize: 20,
//         items: const [
//           BottomNavigationBarItem(
//             icon: FaIcon(FontAwesomeIcons.house),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: FaIcon(FontAwesomeIcons.bookOpen),
//             label: 'Learn',
//           ),
//           BottomNavigationBarItem(
//             icon: FaIcon(FontAwesomeIcons.cloudArrowDown),
//             label: 'Downloads',
//           ),
//           BottomNavigationBarItem(
//             icon: FaIcon(FontAwesomeIcons.circleUser),
//             label: 'Profile',
//           ),
//         ],
//       );
//     });
//   }
// }
