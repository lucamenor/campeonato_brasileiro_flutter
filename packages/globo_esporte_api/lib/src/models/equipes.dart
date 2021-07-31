import 'package:globo_esporte_api/src/models/equipe.dart';
import 'package:json_annotation/json_annotation.dart';

part 'equipes.g.dart';

@JsonSerializable()
class Equipes {
  final Equipe mandante;
  final Equipe visitante;

  const Equipes({required this.mandante, required this.visitante});

  factory Equipes.fromJson(Map<String, dynamic> json) => _$EquipesFromJson(json);
}