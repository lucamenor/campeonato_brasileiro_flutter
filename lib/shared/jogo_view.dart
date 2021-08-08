import 'package:campeonato_brasileiro_flutter/util/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:intl/intl.dart';

class JogoView extends StatelessWidget {
  final Jogo jogo;

  const JogoView(this.jogo, {Key? key}) : super(key: key);

  String getSedeDataEHora(Jogo jogo) {
    final sb = StringBuffer();
    if (jogo.sede != null) {
      sb.write('${jogo.sede?.nomePopular} - ');
    }
    if (jogo.dataRealizacao != null) {
      sb.write(DateFormat.yMd().add_jm().format(jogo.dataRealizacao!));
    }
    if (sb.isEmpty) {
      sb.write('--');
    }

    return sb.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Text(
            getSedeDataEHora(jogo),
            style: Theme.of(context).textTheme.caption,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  jogo.equipes.mandante.nomePopular,
                  textAlign: TextAlign.end,
                ),
              ),
              Text(
                ' ${jogo.placarOficialMandante ?? ''}',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(' x '),
              Text(
                '${jogo.placarOficialVisitante ?? ''} ',
                style: Theme.of(context).textTheme.headline6,
              ),
              Expanded(
                child: Text(
                  jogo.equipes.visitante.nomePopular,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          if (jogo.transmissao?.label != null)
            InkWell(
              onTap: () {
                context.openUrl(jogo.transmissao?.url);
              },
              child: Text(
                jogo.transmissao!.label!,
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          Divider(),
        ],
      ),
    );
  }
}
