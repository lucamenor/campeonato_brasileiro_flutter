import 'package:json_annotation/json_annotation.dart';

part 'transmissao.g.dart';

@JsonSerializable()
class Transmissao {
  final String? label;
  final String? url;

  const Transmissao({this.label, this.url});

  factory Transmissao.fromJson(Map<String, dynamic> json) => _$TransmissaoFromJson(json);
}