import 'package:campeonato_brasileiro_flutter/resumo/widgets/classificacao_row.dart';
import 'package:campeonato_brasileiro_flutter/shared/custom_card.dart';
import 'package:campeonato_brasileiro_flutter/shared/table_header.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

class ClassificacaoLoadedView extends StatelessWidget {
  final List<Classificacao> classificacoes;
  final List<FaixaClassificacao> faixasClassificacoes;

  const ClassificacaoLoadedView({
    Key? key,
    required this.classificacoes,
    required this.faixasClassificacoes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: CustomCard(
            body: Column(
              children: [
                TableHeader(
                  title: 'Equipe',
                  columns: ['P', 'J', 'V', 'E', 'D', 'SG'],
                ),
                ..._buildTimes(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTimes(BuildContext context) {
    final last = classificacoes.length;
    return classificacoes
        .map(
          (classificacao) => ClassificacaoRow(
            classificacao,
            isLast: classificacao.ordem == last,
          ),
        )
        .toList();
  }
}
