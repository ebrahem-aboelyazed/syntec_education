import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class PasswordField extends StatelessWidget {
  PasswordField({
    required this.onChanged,
    this.onSubmitted,
    this.initialValue,
    this.hint = 'Password',
    super.key,
  });

  final void Function(String value) onChanged;
  final void Function(String value)? onSubmitted;
  final String? initialValue;
  final String? hint;

  final ValueNotifier<bool> isObscureText = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isObscureText,
      builder: (context, value, child) {
        return TextFormField(
          onChanged: onChanged,
          initialValue: initialValue,
          validator: FormBuilderValidators.required(),
          obscureText: value,
          onFieldSubmitted: onSubmitted,
          decoration: InputDecoration(
            hintText: hint,
            labelText: hint,
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
