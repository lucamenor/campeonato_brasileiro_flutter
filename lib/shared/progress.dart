import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  final String msg;

  const Progress({ Key? key, this.msg = "Carregando" }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.black,
            ),
            SizedBox(height: 16.0),
            Text(msg),
          ],
        ),
      ),
    );
  }
}