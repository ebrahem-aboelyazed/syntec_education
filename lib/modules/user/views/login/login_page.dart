import 'package:animate_do/animate_do.dart';
import 'package:education/common/fields/name_field.dart';
import 'package:education/common/fields/password_field.dart';
import 'package:education/common/widgets/rounded_button.dart';
import 'package:education/modules/user/user.dart';
import 'package:education/modules/user/views/widgets/custom_view.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: BlocConsumer<UserCubit, UserState>(
              listener: (context, state) {
                if (state is UserFailure) {
                  showErrorSnackBar(context, state.failure);
                }
              },
              builder: (context, state) {
                return LoginView(state: state);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  LoginView({required this.state, super.key});

  final UserState state;

  final model = LoginModel();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();
    return IgnorePointer(
      ignoring: state is UserLoading,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomView(text: 'LOGIN'),
          Container(
            margin: const EdgeInsets.all(Dimensions.paddingLarge),
            child: Form(
              key: cubit.loginFormKey,
              child: FadeInUp(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: Dimensions.paddingMax),
                    NameField(
                      onChanged: (value) => model.username = value,
                      label: 'Username',
                      hint: 'Enter username',
                      textCapitalization: TextCapitalization.none,
                    ),
                    const SizedBox(
                      height: Dimensions.paddingDefault,
                    ),
                    PasswordField(
                      onChanged: (value) => model.password = value,
                    ),
                    const SizedBox(
                      height: Dimensions.paddingDefault,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: Dimensions.paddingDefault,
                    ),
                    Align(
                      child: RoundedButton(
                        onPressed: () => cubit.loginUser(model: model),
                        controller: RoundedLoadingButtonController(),
                        text: 'LOGIN',
                      ),
                    ),
                    const SizedBox(
                      height: Dimensions.paddingDefault,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account yet?",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                        TextButton(
                          //TODO: Add Navigation here
                          onPressed: () {},
                          //Get.toNamed(Paths.signUp),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.paddingSmall),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
