import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

class UltimosJogosCard extends StatelessWidget {
  final List<Jogo> jogos;

  const UltimosJogosCard(this.jogos, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Últimos Jogos',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16.0),
            const SizedBox(height: 8.0),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColorDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                child: Text("Outras Rodadas"),
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
