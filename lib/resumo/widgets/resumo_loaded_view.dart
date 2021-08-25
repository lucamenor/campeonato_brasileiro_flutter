import 'package:app_review/app_review.dart';
import 'package:campeonato_brasileiro_flutter/classificacao/classificacao.dart';
import 'package:campeonato_brasileiro_flutter/resumo/widgets/classificacao_card.dart';
import 'package:campeonato_brasileiro_flutter/resumo/widgets/jogos_card.dart';
import 'package:campeonato_brasileiro_flutter/rodadas/rodadas.dart';
import 'package:campeonato_brasileiro_flutter/shared/custom_icon_button.dart';
import 'package:campeonato_brasileiro_flutter/util/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:share_plus/share_plus.dart';

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
            ClassificacaoCard(
              classificacoes: campeonato.classificacao,
              onClickMaisDetalhes: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClassificacaoPage(fase: campeonato.fase.slug),
                  ),
                );
              },
            ),
            SizedBox(height: 8.0),
            JogosCard(
              jogos: campeonato.listaJogos,
              rodada: campeonato.rodada,
              onClickOutrasRodadas: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RodadasPage(
                      fase: campeonato.fase.slug,
                      rodada: campeonato.rodada,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              alignment: WrapAlignment.center,
              children: [
                CustomIconButton(
                  icon: Icons.rate_review,
                  label: 'Avaliar',
                  onPressed: () async {
                    if (await AppReview.isRequestReviewAvailable) {
                      AppReview.requestReview.then((value) => print(value));
                    } else {
                      AppReview.writeReview.then((value) => print(value));
                    }
                  },
                ),
                CustomIconButton(
                  icon: Icons.share,
                  label: 'Compartilhar',
                  onPressed: () {
                    Share.share('Olha que legal este aplicativo sobre o Campeonato Brasileiro 2021. '
                        'Link: https://play.google.com/store/apps/details?id=br.com.lucianomedeiros.campeonato_brasileiro_flutter');
                  },
                ),
                CustomIconButton(
                  icon: Icons.code,
                  label: 'Código fonte',
                  onPressed: () {
                    context.openUrl('https://github.com/lucamenor/campeonato_brasileiro_flutter');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
