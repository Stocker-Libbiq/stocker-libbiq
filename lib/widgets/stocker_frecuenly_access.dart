import 'package:flutter/material.dart';
import 'package:stocker/library/colors.dart';
import 'package:stocker/library/icons.dart';
import 'package:stocker/library/typography.dart';

class StockerFrecuenlyAccess extends StatelessWidget {
  final String title;
  final bool isNotList;
  final String? contentTitle;
  final List<Widget>? content;
  final String? icon;
  final Color? iconColor;
  final VoidCallback? onTap;

  const StockerFrecuenlyAccess({
    required this.title,
    this.isNotList = false,
    this.contentTitle,
    this.content,
    this.icon,
    this.iconColor,
    this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 150.0,
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: StockerColors.backgroundDark,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: StockerTypography.subtitle),
            const SizedBox(height: 10.0),
            InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  StockerIcon(
                    icon: icon ?? '',
                    size: StockerIconSize.large,
                    color: iconColor,
                  ),
                  const SizedBox(width: 15.0),
                  if(isNotList)
                    Text(
                      contentTitle ?? '',
                      style: StockerTypography.body
                    )
                  else 
                    Column(children: content ?? [])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}