import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    required this.hint,
    required this.label,
    required this.onChanged,
    this.initialValue,
    this.isRequired = true,
    super.key,
  });

  final String hint;
  final String label;
  final void Function(String value) onChanged;
  final String? initialValue;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      initialValue: initialValue,
      keyboardType: TextInputType.phone,
      validator: FormBuilderValidators.compose([
        if (isRequired) ...{
          FormBuilderValidators.required(),
          FormBuilderValidators.numeric(),
          FormBuilderValidators.match(r'^(?:[+0][1-9])?[0-9]{10,12}$'),
        },
      ]),
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        prefixIcon: const Icon(Icons.phone),
        alignLabelWithHint: true,
        border: defaultBorder,
      ),
    );
  }
}
