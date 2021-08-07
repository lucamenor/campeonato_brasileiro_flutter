import 'package:flutter/material.dart';

class PositionIndicator extends StatelessWidget {
  final Color? color;
  final int position;

  const PositionIndicator({Key? key, this.color, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = color != null && color!.computeLuminance() > 0.7 ? Colors.black : Colors.white;

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Center(
        child: Text(
          position.toString(),
          style: TextStyle(
            fontSize: 11,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
