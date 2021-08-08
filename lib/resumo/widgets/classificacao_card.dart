import 'package:campeonato_brasileiro_flutter/shared/custom_card.dart';
import 'package:campeonato_brasileiro_flutter/shared/table_header.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

import 'classificacao_row.dart';

class ClassificacaoCard extends StatelessWidget {
  final List<Classificacao> classificacoes;
  final VoidCallback onClickMaisDetalhes;

  const ClassificacaoCard({
    Key? key,
    required this.classificacoes,
    required this.onClickMaisDetalhes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Text(
        'Classificação',
        style: Theme.of(context).textTheme.headline6,
      ),
      body: Column(
        children: [
          TableHeader(title: 'Equipe', columns: ['P', 'J', 'V', 'E', 'D', 'SG']),
          ..._buildTimes(context),
        ],
      ),
      textButton: 'Mais detalhes',
      buttonCallback: onClickMaisDetalhes,
    );
  }

  List<Widget> _buildTimes(BuildContext context) {
    return classificacoes.take(5).map((classificacao) => ClassificacaoRow(classificacao)).toList();
  }
}
