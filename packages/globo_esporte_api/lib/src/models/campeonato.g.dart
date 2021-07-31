// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campeonato.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Campeonato _$CampeonatoFromJson(Map<String, dynamic> json) {
  return Campeonato(
    edicao: Edicao.fromJson(json['edicao'] as Map<String, dynamic>),
    fase: Fase.fromJson(json['fase'] as Map<String, dynamic>),
    faixasClassificacao: (json['faixas_classificacao'] as List<dynamic>)
        .map((e) => FaixaClassificacao.fromJson(e as Map<String, dynamic>))
        .toList(),
    classificacao: (json['classificacao'] as List<dynamic>)
        .map((e) => Classificacao.fromJson(e as Map<String, dynamic>))
        .toList(),
    listaJogos: (json['lista_jogos'] as List<dynamic>)
        .map((e) => Jogo.fromJson(e as Map<String, dynamic>))
        .toList(),
    listaJogosUnica: json['lista_jogos_unica'] as bool,
    listaTipoUnica: json['lista_tipo_unica'] as bool,
    rodada: Rodada.fromJson(json['rodada'] as Map<String, dynamic>),
  );
}
