import 'package:json_annotation/json_annotation.dart';

part 'edicao.g.dart';

@JsonSerializable()
class Edicao {
  final DateTime dataInicio; //Padrão 2021-05-29
  final DateTime dataFim; //Padrão 2021-05-29
  final String nome;
  final String regulamento;

  const Edicao({required this.dataInicio, required this.dataFim, required this.nome, required this.regulamento});

  factory Edicao.fromJson(Map<String, dynamic> json) => _$EdicaoFromJson(json);
}
