import 'package:campeonato_brasileiro_flutter/shared/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

class UltimosJogosCard extends StatelessWidget {
  final List<Jogo> jogos;

  const UltimosJogosCard(this.jogos, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Text(
        'Últimos Jogos',
        style: Theme.of(context).textTheme.headline6,
      ),
      body: Container(),
      textButton: 'Outras Rodadas',
    );
  }
}
