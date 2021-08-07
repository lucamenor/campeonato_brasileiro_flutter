import 'package:globo_esporte_api/src/models/equipes.dart';
import 'package:globo_esporte_api/src/models/sede.dart';
import 'package:globo_esporte_api/src/models/transmissao.dart';
import 'package:json_annotation/json_annotation.dart';

part 'jogo.g.dart';

@JsonSerializable()
class Jogo {
  final int id;
  final DateTime? dataRealizacao; //Padrão: 2021-09-11T17:00
  final String? horaRealizacao; //Padrão: 17:00
  final int? placarOficialVisitante;
  final int? placarOficialMandante;
  final int? placarPenaltisVisitante;
  final int? placarPenaltisMandante;
  final Equipes equipes;
  final Sede? sede;
  final Transmissao? transmissao;

  const Jogo(
      {required this.id,
      this.dataRealizacao,
      this.horaRealizacao,
      this.placarOficialVisitante,
      this.placarOficialMandante,
      this.placarPenaltisVisitante,
      this.placarPenaltisMandante,
      required this.equipes,
      this.sede,
      this.transmissao});

  factory Jogo.fromJson(Map<String, dynamic> json) => _$JogoFromJson(json);
}
