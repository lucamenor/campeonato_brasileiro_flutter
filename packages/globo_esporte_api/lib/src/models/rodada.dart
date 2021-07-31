import 'package:json_annotation/json_annotation.dart';

part 'rodada.g.dart';

@JsonSerializable()
class Rodada {
  final int atual;
  final int ultima;

  const Rodada({required this.atual, required this.ultima});

  factory Rodada.fromJson(Map<String, dynamic> json) => _$RodadaFromJson(json);
}