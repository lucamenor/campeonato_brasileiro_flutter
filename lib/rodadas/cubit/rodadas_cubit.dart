import 'package:bloc/bloc.dart';
import 'package:campeonato_brasileiro_flutter/util/constants.dart';
import 'package:campeonato_brasileiro_flutter/util/dio_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

part 'rodadas_state.dart';

class RodadasCubit extends Cubit<RodadasState> {
  final GloboEsporteApiClient apiClient;
  final String fase;

  RodadasCubit({
    required this.apiClient,
    required this.fase,
    required int qtdeRodadas,
  }) : super(RodadasState.init(qtdeRodadas));

  initRodada(int rodada) async {
    final index = rodada - 1;
    if (state.rodadas[index] is RodadaLoaded) return;
    if (state.rodadas[index] is LoadingRodada) return;

    emit(state.copyWith(index, LoadingRodada()));
    await Future.delayed(Duration(milliseconds: 500));

    try {
      final jogos = await apiClient.getRodada(idCampeonato, fase, rodada);
      emit(state.copyWith(index, RodadaLoaded(jogos)));
    } on DioError catch (e) {
      emit(state.copyWith(index, RodadaError(getDioErrorMessage(e))));
    } catch (error) {
      emit(state.copyWith(index, RodadaError("Erro desconhecido")));
    }
  }

}
