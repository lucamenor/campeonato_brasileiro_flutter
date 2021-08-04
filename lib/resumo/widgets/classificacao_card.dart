import 'package:campeonato_brasileiro_flutter/resumo/cubit/resumo_cubit.dart';
import 'package:campeonato_brasileiro_flutter/shared/custom_card.dart';
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
    return CustomCard(
      header: Text(
        'Classificação',
        style: Theme.of(context).textTheme.headline6,
      ),
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
      textButton: 'Mais detalhes',
      buttonCallback: () {
        context.read<ResumoCubit>().refresh();
      },
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
