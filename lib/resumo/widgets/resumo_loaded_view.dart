import 'package:campeonato_brasileiro_flutter/resumo/widgets/classificacao_card.dart';
import 'package:campeonato_brasileiro_flutter/resumo/widgets/rodada_card.dart';
import 'package:campeonato_brasileiro_flutter/resumo/widgets/ultimos_jogos_card.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

import 'header.dart';

class ResumoLoadedView extends StatelessWidget {
  final Campeonato campeonato;

  const ResumoLoadedView(this.campeonato, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          children: [
            Header(campeonato.edicao),
            SizedBox(height: 16.0),
            RodadaCard(campeonato.rodada),
            SizedBox(height: 8.0),
            ClassificacaoCard(campeonato.classificacao),
            SizedBox(height: 8.0),
            UltimosJogosCard(campeonato.listaJogos),
          ],
        ),
      ),
    );
  }
}