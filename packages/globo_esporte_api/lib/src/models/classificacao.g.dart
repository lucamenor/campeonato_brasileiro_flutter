// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classificacao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Classificacao _$ClassificacaoFromJson(Map<String, dynamic> json) {
  return Classificacao(
    ordem: json['ordem'] as int,
    variacao: json['variacao'] as int,
    pontos: json['pontos'] as int,
    nomePopular: json['nome_popular'] as String,
    sigla: json['sigla'] as String,
    vitorias: json['vitorias'] as int,
    escudo: json['escudo'] as String,
    equipeId: json['equipe_id'] as int,
    aproveitamento: (json['aproveitamento'] as num).toDouble(),
    jogos: json['jogos'] as int,
    derrotas: json['derrotas'] as int,
    faixaClassificacaoCor: json['faixa_classificacao_cor'] as String?,
    ultimosJogos: (json['ultimos_jogos'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    saldoGols: json['saldo_gols'] as int,
    golsPro: json['gols_pro'] as int,
    golsContra: json['gols_contra'] as int,
    empates: json['empates'] as int,
  );
}
