import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class ProcessButton extends StatelessWidget {
  const ProcessButton({
    required this.text,
    required this.onPressed,
    required this.buttonState,
    this.color,
    this.width,
    this.borderRadius,
    super.key,
  });

  final String text;
  final void Function() onPressed;
  final ButtonState buttonState;
  final Color? color;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width ?? MediaQuery.of(context).size.width * 0.70,
      child: ProgressButton(
        radius: borderRadius ?? 15,
        height: 50,
        minWidth: width ?? MediaQuery.of(context).size.width * 0.70,
        maxWidth: width ?? MediaQuery.of(context).size.width * 0.70,
        progressIndicatorAlignment: MainAxisAlignment.spaceAround,
        stateWidgets: {
          ButtonState.idle: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          ButtonState.loading: const Text(
            'Processing',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          ButtonState.fail: const Text(
            'Fail',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          ButtonState.success: const Text(
            'Success',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          )
        },
        stateColors: {
          ButtonState.idle: color ?? Theme.of(context).primaryColor,
          ButtonState.loading: Colors.blue.shade300,
          ButtonState.fail: Colors.red.shade300,
          ButtonState.success: Colors.green.shade400,
        },
        onPressed: onPressed,
        state: buttonState,
      ),
    );
  }
}
