import 'package:education/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class NameField extends StatelessWidget {
  const NameField({
    required this.onChanged,
    required this.hint,
    required this.label,
    this.initialValue,
    this.textCapitalization = TextCapitalization.words,
    super.key,
  });

  final void Function(String value) onChanged;
  final String hint;
  final String label;
  final String? initialValue;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      initialValue: initialValue,
      keyboardType: TextInputType.name,
      textCapitalization: textCapitalization,
      validator: FormBuilderValidators.required(),
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
