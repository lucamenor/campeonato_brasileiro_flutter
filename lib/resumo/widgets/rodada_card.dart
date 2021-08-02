import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RodadaCard extends StatelessWidget {
  final Rodada rodada;

  const RodadaCard(this.rodada, {Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rodada', style: Theme.of(context).textTheme.headline6),
                Text('${rodada.atual}/${rodada.ultima}'),
              ],
            ),
            SizedBox(height: 16.0),
            LayoutBuilder(
              builder: (ctx, constraints) {
                return LinearPercentIndicator(
                width: constraints.maxWidth,
                animation: true,
                animationDuration: 1000,
                lineHeight: 16.0,
                progressColor: Theme.of(context).accentColor,
                percent: rodada.atual/rodada.ultima,
              );
              },
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}