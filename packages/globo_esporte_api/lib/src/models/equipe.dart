import 'package:json_annotation/json_annotation.dart';

part 'equipe.g.dart';

@JsonSerializable()
class Equipe {
  final int id;
  final String nomePopular;
  final String sigla;
  final String escudo;

  const Equipe(
      {required this.id,
      required this.nomePopular,
      required this.sigla,
      required this.escudo});

  factory Equipe.fromJson(Map<String, dynamic> json) => _$EquipeFromJson(json);
}
