import 'package:json_annotation/json_annotation.dart';

import 'classificacao.dart';
import 'edicao.dart';
import 'faixa_classificacao.dart';
import 'fase.dart';
import 'jogo.dart';
import 'rodada.dart';

part 'campeonato.g.dart';

@JsonSerializable()
class Campeonato {
  final Edicao edicao;
  final Fase fase;
  final List<FaixaClassificacao> faixasClassificacao;
  final List<Classificacao> classificacao;
  final List<Jogo> listaJogos;
  final bool listaJogosUnica;
  final bool listaTipoUnica;
  final Rodada rodada;

  const Campeonato(
      {required this.edicao,
      required this.fase,
      required this.faixasClassificacao,
      required this.classificacao,
      required this.listaJogos,
      required this.listaJogosUnica,
      required this.listaTipoUnica,
      required this.rodada});

  factory Campeonato.fromJson(Map<String, dynamic> json) => _$CampeonatoFromJson(json);

  @override
  String toString() {
    StringBuffer sb = StringBuffer();
    sb.writeln(edicao.nome);
    sb.writeln("--- Classificação ---");
    classificacao.forEach((element) {
      sb.writeln("${element.ordem} - ${element.nomePopular}");
    });

    return sb.toString();
  }
}
