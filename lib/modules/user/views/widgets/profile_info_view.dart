import 'package:auto_route/auto_route.dart';
import 'package:education/helpers/helpers.dart';
import 'package:education/routes/app_router.gr.dart';
import 'package:education/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ProfileInfoView extends StatelessWidget {
  const ProfileInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = HiveHelper.instance.currentUser;
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.75,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimensions.paddingDefault),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                onPressed: () => context.pushRoute(const EditProfileRoute()),
                icon: const Icon(Icons.edit),
                label: const Text('Edit'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  fixedSize: const Size(120, 40),
                  elevation: 0,
                ),
              ),
            ),
            ListTile(
              title: const Text('Full name'),
              subtitle: Text('${_user.firstName} ${_user.lastName}'),
              leading: const Icon(Icons.person),
            ),
            ListTile(
              title: const Text('Username'),
              subtitle: Text(_user.username),
              leading: const Icon(Icons.person),
            ),
            ListTile(
              title: const Text('Email'),
              subtitle: Text(_user.email),
              leading: const Icon(Icons.email),
            ),
            ListTile(
              title: const Text('Phone Number'),
              subtitle: Text(_user.phoneNumber),
              leading: const Icon(Icons.phone),
            ),
            ListTile(
              title: const Text('Second phone Number'),
              subtitle: Text(_user.secondPhoneNumber),
              leading: const Icon(Icons.phone),
            ),
            ListTile(
              title: const Text('Birth Date'),
              subtitle: Text(_user.birthDate),
              leading: const Icon(Icons.date_range),
            ),
            ListTile(
              title: const Text('Country'),
              subtitle: Text(_user.country),
              leading: const Icon(Icons.location_city),
            ),
            ListTile(
              title: const Text('City'),
              subtitle: Text(_user.city),
              leading: const Icon(Icons.location_city),
            ),
          ],
        ),
      ),
    );
  }
}
