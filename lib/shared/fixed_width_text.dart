import 'package:flutter/material.dart';

class FixedWidthText extends StatelessWidget {
  final double width;
  final String text;
  final TextStyle? style;

  const FixedWidthText({
    Key? key,
    required this.width,
    required this.text,
    this.style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: style,
      ),
    );
  }
}
