import 'package:json_annotation/json_annotation.dart';

part 'tipo.g.dart';

@JsonSerializable()
class Tipo {
  final String tipoId;
  final String descricao;

  const Tipo({required this.tipoId, required this.descricao});

  factory Tipo.fromJson(Map<String, dynamic> json) => _$TipoFromJson(json);
}
