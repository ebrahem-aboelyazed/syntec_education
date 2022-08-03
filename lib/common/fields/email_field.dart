import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    required this.onChanged,
    this.initialValue,
    super.key,
  });

  final void Function(String value) onChanged;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      initialValue: initialValue,
      keyboardType: TextInputType.emailAddress,
      validator: FormBuilderValidators.compose(
        [FormBuilderValidators.email(), FormBuilderValidators.required()],
      ),
      //TODO(me): add to localization.
      decoration: const InputDecoration(
        hintText: 'Email',
        labelText: 'Email',
        alignLabelWithHint: true,
        prefixIcon: Icon(Icons.email),
        border: defaultBorder,
      ),
    );
  }
}
