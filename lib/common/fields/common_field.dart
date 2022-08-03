import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CommonField extends StatelessWidget {
  const CommonField({
    required this.hint,
    required this.label,
    required this.onChanged,
    this.initialValue,
    this.isRequired = true,
    this.textCapitalization = TextCapitalization.words,
    super.key,
  });

  final String hint;
  final String label;
  final void Function(String value) onChanged;
  final String? initialValue;
  final bool isRequired;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      initialValue: initialValue,
      keyboardType: TextInputType.name,
      textCapitalization: textCapitalization,
      validator: FormBuilderValidators.compose([
        if (isRequired) FormBuilderValidators.required(),
      ]),
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        prefixIcon: const Icon(Icons.person),
        alignLabelWithHint: true,
        border: defaultBorder,
      ),
    );
  }
}
