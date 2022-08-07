import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:education/common/fields/email_field.dart';
import 'package:education/common/fields/name_field.dart';
import 'package:education/common/fields/password_field.dart';
import 'package:education/common/widgets/process_button.dart';
import 'package:education/modules/user/user.dart';
import 'package:education/modules/user/views/widgets/custom_view.dart';
import 'package:education/routes/app_router.gr.dart';
import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final model = SignUpModel();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UserCubit>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Form(
            key: cubit.signUpFormKey,
            child: BlocConsumer<UserCubit, UserState>(
              listener: (context, state) {
                if (state is UserFailure) {
                  showErrorSnackBar(context, state.failure);
                } else if (state is UserRegistered) {
                  context.router.replaceAll([const HomeRoute()]);
                }
              },
              builder: (context, state) =>
                  SignUpView(cubit: cubit, state: state, model: model),
            ),
          ),
        ),
      ),
    );
  }
}

class SignUpView extends StatelessWidget {
  const SignUpView({
    required this.cubit,
    required this.state,
    required this.model,
    super.key,
  });

  final UserCubit cubit;
  final UserState state;
  final SignUpModel model;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: state is UserLoading,
      child: Column(
        children: [
          const CustomView(text: 'SIGN UP'),
          const SizedBox(height: Dimensions.paddingDefault),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(Dimensions.paddingLarge),
                child: FadeInUp(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        child: ProcessButton(
                          onPressed: () => cubit.registerUser(model: model),
                          buttonState: cubit.buttonState,
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
