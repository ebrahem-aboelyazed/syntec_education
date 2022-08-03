import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ConfirmPasswordField extends StatelessWidget {
  ConfirmPasswordField({
    required this.newPassword,
    required this.onChanged,
    super.key,
  });

  final String newPassword;
  final void Function(String value) onChanged;

  final ValueNotifier<bool> isObscureText = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isObscureText,
      builder: (context, value, child) {
        return TextFormField(
          onChanged: onChanged,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.match(newPassword),
          ]),
          obscureText: value,
          //TODO(me): add localization here
          decoration: InputDecoration(
            hintText: 'Confirm Password',
            labelText: 'Confirm Password',
            alignLabelWithHint: true,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              icon: Icon(
                isObscureText.value
                    ? Icons.visibility
                    : Icons.visibility_off_sharp,
              ),
              onPressed: () => isObscureText.value = !value,
            ),
            border: defaultBorder,
          ),
        );
      },
    );
  }
}
