import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
        minWidth: MediaQuery.of(context).size.width,
      ),
      child: SvgPicture.asset(
        'assets/svg/undraw_empty_svg.svg',
      ),
    );
  }
}
