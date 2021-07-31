import 'package:json_annotation/json_annotation.dart';

part 'faixa_classificacao.g.dart';

@JsonSerializable()
class FaixaClassificacao {
  final String cor;
  final int id;
  final String nome;

  const FaixaClassificacao({required this.cor, required this.id, required this.nome});

  factory FaixaClassificacao.fromJson(Map<String, dynamic> json) => _$FaixaClassificacaoFromJson(json);
}
