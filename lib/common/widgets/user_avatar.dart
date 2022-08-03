import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    this.imageUrl,
    this.color = Colors.black,
    this.radius = 50,
    super.key,
  });

  final String? imageUrl;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: radius,
      backgroundColor: Colors.transparent,
      child: imageUrl != null
          ? CachedNetworkImage(imageUrl: imageUrl!)
          : SvgPicture.asset('assets/svg/person.svg', color: color),
    );
  }
}
