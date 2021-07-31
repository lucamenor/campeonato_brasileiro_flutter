import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'globo_esporte_api_client.g.dart';

@RestApi(baseUrl: "https://api.globoesporte.globo.com/")
abstract class GloboEsporteApiClient {
  factory GloboEsporteApiClient(Dio dio, {String baseUrl}) = _GloboEsporteApiClient;

  @GET("tabela/{idCampeonato}/fase/{fase}/classificacao/")
  Future<Campeonato> getResumoCampeonato(@Path() String idCampeonato, @Path() String fase);

  @GET("tabela/{idCampeonato}/fase/{fase}/rodada/{rodada}/jogos/")
  Future<List<Jogo>> getRodada(@Path() String idCampeonato, @Path() String fase, @Path() int rodada);

}