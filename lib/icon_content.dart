import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.fontIcon, @required this.cardText, this.textStyle});
  final IconData fontIcon;
  final String cardText;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          fontIcon,
          size: 100.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          cardText,
          style: textStyle,
        ),
      ],
    );
  }
}
