import 'dart:async';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.text,
    required this.onPressed,
    this.color,
    this.width,
    super.key,
  });

  final String text;
  final FutureOr<void> Function() onPressed;
  final Color? color;
  final double? width;

  final ValueNotifier<bool> processing = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final currentWidth = width ?? MediaQuery.of(context).size.width;
    return SizedBox(
      height: 50,
      child: ValueListenableBuilder<bool>(
        valueListenable: processing,
        builder: (context, value, child) {
          if (value) {
            return IgnorePointer(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: color ?? Colors.blueAccent,
                  fixedSize: Size(currentWidth, 50),
                ),
                child: const Text('Processing...'),
              ),
            );
          } else {
            return ElevatedButton(
              onPressed: () async {
                processing.value = true;
                try {
                  await onPressed.call();
                } catch (_) {}
                processing.value = false;
              },
              style: ElevatedButton.styleFrom(
                primary: color ?? Colors.blueAccent,
                fixedSize: Size(currentWidth, 50),
              ),
              child: Text(text),
            );
          }
        },
      ),
    );
  }
}
