import 'package:json_annotation/json_annotation.dart';

part 'sede.g.dart';

@JsonSerializable()
class Sede {
  final String nomePopular;

  const Sede({required this.nomePopular});

  factory Sede.fromJson(Map<String, dynamic> json) => _$SedeFromJson(json);
}