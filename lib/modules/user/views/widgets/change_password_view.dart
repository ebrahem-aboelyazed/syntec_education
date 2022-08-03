import 'package:education/common/fields/password_field.dart';
import 'package:education/common/widgets/rounded_button.dart';
import 'package:education/modules/user/user.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          Dimensions.paddingLarge,
          Dimensions.paddingLarge,
          Dimensions.paddingLarge,
          0,
        ),
        child: Form(
          key: cubit.signUpFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PasswordField(
                onChanged: (value) {},
                hint: 'Old Password',
              ),
              const SizedBox(height: Dimensions.paddingDefault),
              PasswordField(
                onChanged: (value) {},
                hint: 'New Password',
              ),
              const SizedBox(height: Dimensions.paddingDefault),
              RoundedButton(
                text: 'Submit',
                onPressed: () {},
                //TODO: Change button
                controller: RoundedLoadingButtonController(),
              ),
              const SizedBox(height: Dimensions.paddingDefault),
            ],
          ),
        ),
      ),
    );
  }
}
