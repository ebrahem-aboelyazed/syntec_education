import 'package:animate_do/animate_do.dart';
import 'package:education/common/fields/email_field.dart';
import 'package:education/common/fields/name_field.dart';
import 'package:education/common/fields/password_field.dart';
import 'package:education/common/widgets/rounded_button.dart';
import 'package:education/modules/user/user.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(Dimensions.paddingLarge),
              child: Form(
                key: cubit.signUpFormKey,
                child: FadeInUp(
                  child: BlocConsumer<UserCubit, UserState>(
                    listener: (context, state) {
                      if (state is UserFailure) {
                        showErrorSnackBar(context, state.failure);
                      }
                    },
                    builder: (context, state) {
                      return SignUpView(cubit: cubit, state: state);
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpView extends StatelessWidget {
  SignUpView({required this.cubit, required this.state, super.key});

  final UserState state;
  final UserCubit cubit;

  final SignUpModel model = SignUpModel();

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: state is UserLoading,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimensions.paddingMax),
          Text(
            'SIGN UP',
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(fontFamily: 'Roboto'),
          ),
          const SizedBox(height: Dimensions.paddingMax),
          NameField(
            onChanged: (value) => model.firstName = value,
            hint: 'Enter first name',
            label: 'First Name',
          ),
          const SizedBox(height: Dimensions.paddingDefault),
          NameField(
            onChanged: (value) => model.lastName = value,
            hint: 'Enter last name',
            label: 'Last Name',
          ),
          const SizedBox(height: Dimensions.paddingDefault),
          NameField(
            onChanged: (String value) => model.username = value,
            hint: 'Enter username',
            label: 'Username',
            textCapitalization: TextCapitalization.none,
          ),
          const SizedBox(height: Dimensions.paddingDefault),
          EmailField(
            onChanged: (String value) => model.email = value,
          ),
          const SizedBox(height: Dimensions.paddingDefault),
          PasswordField(
            onChanged: (String value) => model.password = value,
          ),
          const SizedBox(
            height: Dimensions.paddingExtraLarge,
          ),
          Align(
            child: RoundedButton(
              onPressed: () => cubit.registerUser(model: model),
              //TODO: Change Button Here
              controller: RoundedLoadingButtonController(),
              text: 'CREATE NEW ACCOUNT',
            ),
          ),
          const SizedBox(height: Dimensions.paddingDefault),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: Dimensions.paddingDefault),
        ],
      ),
    );
  }
}
