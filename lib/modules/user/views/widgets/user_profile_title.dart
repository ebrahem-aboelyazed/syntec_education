import 'package:education/common/widgets/user_avatar.dart';
import 'package:education/helpers/helpers.dart';
import 'package:flutter/material.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = HiveHelper.instance.currentUser;
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 150),
      opacity: 1,
      child: ListTile(
        title: Text(
          '${_user.firstName} ${_user.lastName}',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        leading: const UserAvatar(radius: 20),
      ),
    );
    //TODO: Update this with cubit
    // return Obx(() {
    //   final hasCollapsed = controller.top.value ==
    //       MediaQuery.of(context).padding.top + kToolbarHeight;
    //   return AnimatedOpacity(
    //     duration: const Duration(milliseconds: 150),
    //     opacity: hasCollapsed ? 1.0 : 0.0,
    //     child: ListTile(
    //       title: Text(
    //         '${_user.firstName} ${_user.lastName}',
    //         maxLines: 1,
    //         overflow: TextOverflow.ellipsis,
    //         style: Theme.of(context)
    //             .textTheme
    //             .titleMedium
    //             ?.copyWith(fontWeight: FontWeight.bold, fontSize: 17),
    //       ),
    //       leading: const UserAvatar(radius: 20),
    //     ),
    //   );
    // });
  }
}
