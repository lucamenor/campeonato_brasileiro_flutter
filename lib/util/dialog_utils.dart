import 'package:flutter/material.dart';

void showWarningDialog(BuildContext context, String title, String msg) {
  showDialog(context: context, builder: (context) {
    return Theme(
      data: ThemeData.light(),
      child: AlertDialog(
        title: Text(title),
        content: Text(msg),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  });
}
