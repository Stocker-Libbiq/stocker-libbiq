import 'package:flutter/material.dart';
import 'package:stocker/library/colors.dart';
import 'package:stocker/library/icons.dart';

class LeftNavigation extends StatelessWidget {
  final String? icon;
  final VoidCallback onTap;
  final String text;

  const LeftNavigation({
    this.icon,
    required this.onTap,
    required this.text,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          StockerIcon(
            icon: icon ?? '',
            size: StockerIconSize.large,
            color: StockerColors.backgroundRevert,
          ),
          const SizedBox(width: 10.0),
          Text(text)
        ],
      ),
    );
  }
}