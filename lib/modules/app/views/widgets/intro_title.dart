import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class IntroTitle extends StatelessWidget {
  const IntroTitle({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        maxLines: 1,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
