// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'globo_esporte_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _GloboEsporteApiClient implements GloboEsporteApiClient {
  _GloboEsporteApiClient(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.globoesporte.globo.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Campeonato> getResumoCampeonato(idCampeonato, fase) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Campeonato>(Options(
                method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(
                _dio.options, 'tabela/$idCampeonato/fase/$fase/classificacao/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Campeonato.fromJson(_result.data!);
    return value;
  }

  @override
  Future<List<Jogo>> getRodada(idCampeonato, fase, rodada) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<List<Jogo>>(
        Options(method: 'GET', headers: <String, dynamic>{}, extra: _extra)
            .compose(_dio.options,
                'tabela/$idCampeonato/fase/$fase/rodada/$rodada/jogos/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Jogo.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
