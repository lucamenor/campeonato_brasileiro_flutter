import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:campeonato_brasileiro_flutter/util/dio_error_handler.dart';
import 'package:equatable/equatable.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:dio/dio.dart';

part 'resumo_event.dart';
part 'resumo_state.dart';

const idCampeonato = "d1a37fa4-e948-43a6-ba53-ab24ab3a45b1";
const fase = "fase-unica-campeonato-brasileiro-2021";

class ResumoBloc extends Bloc<ResumoEvent, ResumoState> {
  final GloboEsporteApiClient _apiClient;

  ResumoBloc(this._apiClient) : super(ResumoInitial());

  void refresh() {
    add(RefreshResumo());
  }

  @override
  Stream<ResumoState> mapEventToState(ResumoEvent event) async* {
    if (event is RefreshResumo) {
      yield* _mapRefreshResumoToState(event);
    }
  }

  Stream<ResumoState> _mapRefreshResumoToState(ResumoEvent event) async* {
    yield LoadingResumo();
    try {
      final campeonato = await _apiClient.getResumoCampeonato(idCampeonato, fase);
      yield ResumoLoaded(campeonato);
    } on DioError catch(e) {
      yield ResumoError(getDioErrorMessage(e));
    }
  }
}
