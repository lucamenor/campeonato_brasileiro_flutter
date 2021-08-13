import 'package:campeonato_brasileiro_flutter/shared/custom_card.dart';
import 'package:campeonato_brasileiro_flutter/shared/jogo_view.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

class JogosCard extends StatelessWidget {
  final List<Jogo> jogos;
  final Rodada rodada;
  final VoidCallback onClickOutrasRodadas;

  const JogosCard({
    Key? key,
    required this.jogos,
    required this.rodada,
    required this.onClickOutrasRodadas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Text(
        'Jogos - ${rodada.atual}ª rodada',
        style: Theme.of(context).textTheme.headline6,
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: jogos.map((jogo) => JogoView(jogo)).toList(),
        ),
      ),
      textButton: 'Outras rodadas',
      buttonCallback: onClickOutrasRodadas,
    );
  }
}
