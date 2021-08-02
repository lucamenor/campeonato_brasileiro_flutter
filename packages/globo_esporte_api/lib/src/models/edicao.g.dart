// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edicao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Edicao _$EdicaoFromJson(Map<String, dynamic> json) {
  return Edicao(
    dataInicio: DateTime.parse(json['data_inicio'] as String),
    dataFim: DateTime.parse(json['data_fim'] as String),
    nome: json['nome'] as String,
    regulamento: json['regulamento'] as String,
  );
}
