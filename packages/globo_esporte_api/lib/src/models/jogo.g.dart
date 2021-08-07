// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Jogo _$JogoFromJson(Map<String, dynamic> json) {
  return Jogo(
    id: json['id'] as int,
    dataRealizacao: json['data_realizacao'] == null
        ? null
        : DateTime.parse(json['data_realizacao'] as String),
    horaRealizacao: json['hora_realizacao'] as String?,
    placarOficialVisitante: json['placar_oficial_visitante'] as int?,
    placarOficialMandante: json['placar_oficial_mandante'] as int?,
    placarPenaltisVisitante: json['placar_penaltis_visitante'] as int?,
    placarPenaltisMandante: json['placar_penaltis_mandante'] as int?,
    equipes: Equipes.fromJson(json['equipes'] as Map<String, dynamic>),
    sede: json['sede'] == null
        ? null
        : Sede.fromJson(json['sede'] as Map<String, dynamic>),
    transmissao: json['transmissao'] == null
        ? null
        : Transmissao.fromJson(json['transmissao'] as Map<String, dynamic>),
  );
}
