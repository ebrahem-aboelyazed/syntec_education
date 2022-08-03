import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class IntroDescription extends StatelessWidget {
  const IntroDescription({required this.description, super.key});

  final String description;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Text(
        description,
        style: const TextStyle(color: Colors.white, fontSize: 18),
        textAlign: TextAlign.center,
        maxLines: 100,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
