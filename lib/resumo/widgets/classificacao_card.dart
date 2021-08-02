import 'package:campeonato_brasileiro_flutter/resumo/bloc/resumo_bloc.dart';
import 'package:campeonato_brasileiro_flutter/shared/fixed_width_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

import 'classificacao_row.dart';

class ClassificacaoCard extends StatelessWidget {
  final List<Classificacao> classificacoes;

  const ClassificacaoCard(this.classificacoes, {Key? key}) : super(key: key);

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
              'Classificação',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Equipe',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                FixedWidthText(
                  width: 24,
                  text: 'P',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FixedWidthText(
                  width: 24,
                  text: 'J',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FixedWidthText(
                  width: 24,
                  text: 'V',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FixedWidthText(
                  width: 24,
                  text: 'E',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FixedWidthText(
                  width: 24,
                  text: 'D',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8.0),
              ],
            ),
            ..._buildTimes(context),
            const SizedBox(height: 8.0),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColorDark,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )),
                child: Text("Mais detalhes"),
                onPressed: () {
                  context.read<ResumoBloc>().refresh();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTimes(BuildContext context) {
    return classificacoes
        .take(5)
        .map((classificacao) => ClassificacaoRow(
              classificacao,
              isLast: classificacao.ordem == 5,
            ))
        .toList();
  }
}
