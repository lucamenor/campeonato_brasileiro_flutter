import 'package:campeonato_brasileiro_flutter/shared/fixed_width_text.dart';
import 'package:campeonato_brasileiro_flutter/shared/position_indicator.dart';
import 'package:campeonato_brasileiro_flutter/util/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ClassificacaoRow extends StatelessWidget {
  final Classificacao classificacao;
  final bool? isLast;

  const ClassificacaoRow(this.classificacao, {Key? key, this.isLast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = classificacao.faixaClassificacaoCor?.toColor() ?? Colors.black;
    return TimelineTile(
      isFirst: classificacao.ordem == 1,
      isLast: isLast ?? false,
      beforeLineStyle: LineStyle(color: color),
      afterLineStyle: LineStyle(color: color),
      endChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Row(
          children: [
            Expanded(
                child: Text(
              classificacao.nomePopular,
              overflow: TextOverflow.ellipsis,
            )),
            FixedWidthText(width: 24, text: classificacao.pontos.toString()),
            FixedWidthText(width: 24, text: classificacao.jogos.toString()),
            FixedWidthText(width: 24, text: classificacao.vitorias.toString()),
            FixedWidthText(width: 24, text: classificacao.empates.toString()),
            FixedWidthText(width: 24, text: classificacao.derrotas.toString()),
            FixedWidthText(width: 24, text: classificacao.saldoGols.toString()),
          ],
        ),
      ),
      indicatorStyle: IndicatorStyle(
        color: color,
        indicator: PositionIndicator(
          position: classificacao.ordem,
          color: color,
        ),
      ),
    );
  }
}
