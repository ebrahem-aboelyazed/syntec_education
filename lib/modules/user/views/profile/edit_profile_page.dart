import 'package:education/common/fields/email_field.dart';
import 'package:education/common/fields/name_field.dart';
import 'package:education/common/fields/phone_field.dart';
import 'package:education/helpers/helpers.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _user = HiveHelper.instance.currentUser;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Edit Profile')),
        resizeToAvoidBottomInset: true,
        body: Form(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(Dimensions.paddingDefault),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: Dimensions.paddingDefault),
                NameField(
                  onChanged: (value) {},
                  hint: 'First Name',
                  label: 'First Name',
                  initialValue: _user.firstName,
                ),
                const SizedBox(height: Dimensions.paddingDefault),
                NameField(
                  onChanged: (value) {},
                  hint: 'Last Name',
                  label: 'Last Name',
                  initialValue: _user.lastName,
                ),
                const SizedBox(height: Dimensions.paddingDefault),
                NameField(
                  onChanged: (value) {},
                  hint: 'Username',
                  label: 'Username',
                  initialValue: _user.username,
                ),
                const SizedBox(height: Dimensions.paddingDefault),
                EmailField(
                  onChanged: (value) {},
                  initialValue: _user.email,
                ),
                const SizedBox(height: Dimensions.paddingDefault),
                PhoneField(
                  onChanged: (value) {},
                  label: 'Phone Number',
                  hint: 'Phone Number',
                  initialValue: _user.phoneNumber,
                ),
                const SizedBox(height: Dimensions.paddingDefault),
                PhoneField(
                  onChanged: (value) {},
                  label: 'Second phone Number',
                  hint: 'Second phone Number',
                  initialValue: _user.secondPhoneNumber,
                ),
                const SizedBox(height: Dimensions.paddingDefault),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
