import 'package:globo_esporte_api/src/models/tipo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fase.g.dart';

@JsonSerializable()
class Fase {
  final Tipo tipo;
  final String? disclaimer;
  final String slug;

  const Fase({required this.tipo, this.disclaimer, required this.slug});

  factory Fase.fromJson(Map<String, dynamic> json) => _$FaseFromJson(json);
}
