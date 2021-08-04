import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:campeonato_brasileiro_flutter/resumo/cubit/resumo_cubit.dart';
import 'package:dio/dio.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../test_data.dart';

final dioErrorConnectTimeout = DioError(
  requestOptions: RequestOptions(path: ''),
  type: DioErrorType.connectTimeout,
);
final dioErrorSocket = DioError(
  requestOptions: RequestOptions(path: ''),
  type: DioErrorType.other,
  error: SocketException.closed(),
);

class MockApi extends Mock implements GloboEsporteApiClient {}

void main() {
  group('ResumoCubit', () {
    late GloboEsporteApiClient apiClient;
    late ResumoCubit resumoCubit;

    setUp(() {
      apiClient = MockApi();
      resumoCubit = ResumoCubit(apiClient);
    });

    tearDown(() {
      resumoCubit.close();
    });

    test('initial state', () {
      expect(resumoCubit.state, ResumoInitial());
    });

    group('refresh', () {
      blocTest<ResumoCubit, ResumoState>(
        'emits [LoadingResumo, ResumoLoaded] when returns success',
        build: () {
          when(() => apiClient.getResumoCampeonato(any(), any()))
              .thenAnswer((_) async => campeonato);
          return resumoCubit;
        },
        act: (cubit) => cubit.refresh(),
        expect: () =>
        [
          LoadingResumo(),
          isA<ResumoLoaded>()
              .having((state) => state.campeonato, 'campeonato', campeonato),
        ],
      );

      blocTest<ResumoCubit, ResumoState>(
        'emits [LoadingResumo, ResumoError] when throws DioError',
        build: () {
          when(() => apiClient.getResumoCampeonato(any(), any()))
              .thenThrow(dioErrorConnectTimeout);
          return resumoCubit;
        },
        act: (cubit) => cubit.refresh(),
        expect: () =>
        [
          LoadingResumo(),
          isA<ResumoError>()
              .having((state) => state.msg, 'error msg', "Não foi possível se conectar aos serviços. Tente novamente"),
        ],
      );

      blocTest<ResumoCubit, ResumoState>(
        'emits [LoadingResumo, ResumoError] when throws DioError with socketException',
        build: () {
          when(() => apiClient.getResumoCampeonato(any(), any()))
              .thenThrow(dioErrorSocket);
          return resumoCubit;
        },
        act: (cubit) => cubit.refresh(),
        expect: () =>
        [
          LoadingResumo(),
          isA<ResumoError>()
              .having((state) => state.msg, 'error msg', "Você possui uma conexão de internet ativa? Verifique e tente novamente"),
        ],
      );

      blocTest<ResumoCubit, ResumoState>(
        'emits [LoadingResumo, ResumoError] when throws Exception',
        build: () {
          when(() => apiClient.getResumoCampeonato(any(), any()))
              .thenThrow(Exception());
          return resumoCubit;
        },
        act: (cubit) => cubit.refresh(),
        expect: () =>
        [
          LoadingResumo(),
          isA<ResumoError>()
              .having((state) => state.msg, 'error msg', "Erro desconhecido"),
        ],
      );
    });
  });
}
