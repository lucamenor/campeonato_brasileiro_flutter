import 'package:campeonato_brasileiro_flutter/resumo/widgets/classificacao_row.dart';
import 'package:campeonato_brasileiro_flutter/shared/custom_card.dart';
import 'package:campeonato_brasileiro_flutter/shared/fixed_width_text.dart';
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
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Equipe',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ...['P', 'J', 'V', 'E', 'D'].map((e) => FixedWidthText(
                          width: 24,
                          text: e,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(width: 8.0),
                  ],
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
