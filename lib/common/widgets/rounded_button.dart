import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.text,
    required this.onPressed,
    required this.controller,
    this.color,
    this.width,
    this.borderRadius,
    super.key,
  });

  final String text;
  final void Function() onPressed;
  final RoundedLoadingButtonController controller;
  final Color? color;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width ?? MediaQuery.of(context).size.width * 0.70,
      child: RoundedLoadingButton(
        onPressed: onPressed,
        color: color ?? Theme.of(context).primaryColor,
        controller: controller,
        borderRadius: borderRadius ?? 15,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
