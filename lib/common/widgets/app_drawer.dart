import 'package:education/common/widgets/user_avatar.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Ebrahem AboElyazed'),
            accountEmail: Text('ebrahem6076@gmail.com'),
            currentAccountPicture: UserAvatar(
              radius: 40,
              color: Colors.white60,
            ),
          ),
          SizedBox(height: Dimensions.paddingDefault),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
          SizedBox(height: Dimensions.paddingSmall),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
          SizedBox(height: Dimensions.paddingSmall),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
          SizedBox(height: Dimensions.paddingSmall),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
          SizedBox(height: Dimensions.paddingSmall),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
          SizedBox(height: Dimensions.paddingSmall),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
          SizedBox(height: Dimensions.paddingSmall),
          ListTile(
            title: Text('Favorites'),
            leading: Icon(Icons.favorite),
          ),
          SizedBox(height: Dimensions.paddingSmall),
        ],
      ),
    );
  }
}
