import 'package:flutter/material.dart';
import 'package:stocker/library/colors.dart';
import 'package:stocker/library/icons.dart';

class StockerActions extends StatelessWidget {
  final String text;
  final String icon;
  final String iconText;
  final VoidCallback onPressed;

  const StockerActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: StockerColors.backgroundContent,
      width: 200.0,
      height: 200.0,
      child: Column(
        children: <Widget>[
          IconButton(
            icon: StockerIcon(
              icon: StockerIcons.add,
            ),
            onPressed: () {},
          ),
          Text('Add'),
        ],
      ),
    );
  }
}