import 'package:flutter/material.dart';

class CustomView extends StatelessWidget {
  const CustomView({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 5,
            top: 5,
            child: BackButton(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()..lineTo(0, size.height - 120);
    final controlPoint = Offset(50, size.height);
    final endpoint = Offset(size.width / 2, size.height);
    path
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endpoint.dx,
        endpoint.dy,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
