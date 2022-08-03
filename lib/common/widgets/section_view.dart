import 'package:flutter/material.dart';

class SectionView extends StatelessWidget {
  const SectionView({
    required this.onTap,
    required this.text,
    required this.itemCount,
    required this.itemBuilder,
    super.key,
  });

  final void Function() onTap;
  final String text;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
              ),
              TextButton.icon(
                onPressed: onTap,
                icon: const Icon(Icons.double_arrow_outlined),
                label: Text(
                  'View All',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15,
                  ),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: itemBuilder,
            itemCount: itemCount,
          ),
        ),
      ],
    );
  }
}
