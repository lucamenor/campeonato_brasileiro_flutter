import 'package:json_annotation/json_annotation.dart';

part 'classificacao.g.dart';

@JsonSerializable()
class Classificacao {
  final int ordem;
  final int variacao;
  final int pontos;
  final String nomePopular;
  final String sigla;
  final int vitorias;
  final String escudo;
  final int equipeId;
  final double aproveitamento;
  final int jogos;
  final int derrotas;
  final String? faixaClassificacaoCor;
  final List<String> ultimosJogos;
  final int saldoGols;
  final int golsPro;
  final int golsContra;
  final int empates;

  const Classificacao(
      {required this.ordem,
      required this.variacao,
      required this.pontos,
      required this.nomePopular,
      required this.sigla,
      required this.vitorias,
      required this.escudo,
      required this.equipeId,
      required this.aproveitamento,
      required this.jogos,
      required this.derrotas,
      this.faixaClassificacaoCor,
      required this.ultimosJogos,
      required this.saldoGols,
      required this.golsPro,
      required this.golsContra,
      required this.empates});

  factory Classificacao.fromJson(Map<String, dynamic> json) => _$ClassificacaoFromJson(json);
}
