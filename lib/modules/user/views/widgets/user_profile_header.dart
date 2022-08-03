import 'package:education/common/widgets/user_avatar.dart';
import 'package:education/helpers/helpers.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = HiveHelper.instance.currentUser;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const UserAvatar(),
        const SizedBox(height: Dimensions.paddingSmall),
        Text(
          '${_user.firstName} ${_user.lastName}',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Text(
          _user.email,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
