import 'package:flutter/material.dart';

class PositionIndicator extends StatelessWidget {
  final Color? color;
  final int position;

  const PositionIndicator({Key? key, this.color, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
