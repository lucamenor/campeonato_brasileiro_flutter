import 'package:flutter/material.dart';

import 'fixed_width_text.dart';

class TableHeader extends StatelessWidget {
  final String title;
  final List<String> columns;

  const TableHeader({
    Key? key,
    required this.title,
    required this.columns,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ...columns.map((e) => FixedWidthText(
              width: 24,
              text: e,
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
        const SizedBox(width: 8.0),
      ],
    );
  }
}
