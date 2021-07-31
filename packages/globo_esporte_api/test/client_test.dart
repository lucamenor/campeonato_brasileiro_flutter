import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:test/test.dart';

import 'test_data.dart';

late MockWebServer _server;
late GloboEsporteApiClient _client;

void main() {
  setUp(() async {
    _server = MockWebServer();
    await _server.start();
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    _client = GloboEsporteApiClient(dio, baseUrl: _server.url);
  });

  tearDown(() {
    _server.shutdown();
  });

  group('Consultar Classificação', () {
    test("Retorno esperado", () async {
      _server.enqueue(body: jsonCampeonato, headers: {"Content-Type": "application/json"});
      final campeonato = await _client.getResumoCampeonato(idCampeonato, fase);
      expect(campeonato, isNotNull);
      expect(campeonato.edicao, isNotNull);
      expect(campeonato.edicao.nome, "Campeonato Brasileiro 2021");
      expect(campeonato.fase.slug, fase);
      expect(campeonato.classificacao.length, 20);
      expect(campeonato.listaJogos.length, 10);
      expect(campeonato.rodada.atual, 14);
      expect(campeonato.rodada.ultima, 38);
    });

    test('Não encontrado', () async {
      _server.enqueue(httpCode: 404);
      expect(
        () => _client.getResumoCampeonato(idCampeonato, fase),
        throwsA(isA<DioError>()
            .having((e) => e.type, 'error type', DioErrorType.response)
            .having((e) => e.response?.statusCode, 'status', 404)),
      );
    });
  });

  group('Consultar Rodada', () {
    test("Retorno esperado", () async {
      _server.enqueue(body: jsonRodada14, headers: {"Content-Type": "application/json"});
      final jogos = await _client.getRodada(idCampeonato, fase, 14);
      expect(jogos, isNotNull);
      expect(jogos.length, 10);
    });

    test('Rodada vazia', () async {
      _server.enqueue(body: jsonEncode([]), headers: {"Content-Type": "application/json"});
      final jogos = await _client.getRodada(idCampeonato, fase, 14);
      expect(jogos, isNotNull);
      expect(jogos, isEmpty);
    });

    test('Não encontrado', () async {
      _server.enqueue(httpCode: 404);
      expect(
            () => _client.getRodada(idCampeonato, fase, 14),
        throwsA(isA<DioError>()
            .having((e) => e.type, 'error type', DioErrorType.response)
            .having((e) => e.response?.statusCode, 'status', 404)),
      );
    });
  });
}
