import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String msg;
  final VoidCallback tryAgain;

  const ErrorView({Key? key, this.msg = "Erro inesperado", required this.tryAgain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "😢",
            style: TextStyle(fontSize: 64),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(msg, style: Theme.of(context).textTheme.headline5,),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColorDark,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              )
            ),
            child: Text("Tentar novamente"),
            onPressed: tryAgain,
          ),
        ],
      ),
    );
  }
}
