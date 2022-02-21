import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colour, this.cardChild, this.cardPadding});

  final Color colour;
  final Widget cardChild;
  final EdgeInsetsGeometry cardPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      padding: cardPadding,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: colour),
    );
  }
}
