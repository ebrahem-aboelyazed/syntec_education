import 'package:education/helpers/helpers.dart';
import 'package:education/modules/user/views/widgets/change_password_view.dart';
import 'package:education/modules/user/views/widgets/profile_info_view.dart';
import 'package:education/modules/user/views/widgets/user_profile_header.dart';
import 'package:education/modules/user/views/widgets/user_profile_title.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage() : super(key: const Key('ProfilePageKey'));

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height * 0.25,
          elevation: 0,
          backgroundColor: Colors.grey[50],
          automaticallyImplyLeading: false,
          pinned: true,
          centerTitle: false,
          title: const UserProfileTitle(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.black),
            ),
          ],
          flexibleSpace: LayoutBuilder(
            builder: (context, constraints) {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                //TODO: Update this with cubit
                //cubit.top.value = constraints.biggest.height;
              });
              return const FlexibleSpaceBar(
                background: UserProfileHeader(),
              );
            },
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: Dimensions.paddingDefault),
                    Padding(
                      padding: const EdgeInsets.all(Dimensions.paddingSmall),
                      child: Text(
                        'Account',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    ListTile(
                      title: const Text('Profile Info'),
                      trailing: const Icon(
                        Icons.navigate_next_outlined,
                      ),
                      leading: const Icon(
                        Icons.info_rounded,
                        color: Colors.blueAccent,
                      ),
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => const ProfileInfoView(),
                          isScrollControlled: true,
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Change Password'),
                      trailing: const Icon(
                        Icons.navigate_next_outlined,
                      ),
                      leading: const Icon(
                        Icons.lock,
                        color: Colors.cyan,
                      ),
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => const ChangePasswordView(),
                          isScrollControlled: true,
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Logout'),
                      trailing: const Icon(
                        Icons.navigate_next_outlined,
                      ),
                      leading: const Icon(
                        Icons.logout,
                        color: Colors.redAccent,
                      ),
                      onTap: HiveHelper.instance.clearUserData,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
