import 'package:bloc/bloc.dart';
import 'package:campeonato_brasileiro_flutter/util/dio_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

part 'resumo_state.dart';

const idCampeonato = "d1a37fa4-e948-43a6-ba53-ab24ab3a45b1";
const fase = "fase-unica-campeonato-brasileiro-2021";

class ResumoCubit extends Cubit<ResumoState> {
  final GloboEsporteApiClient _apiClient;

  ResumoCubit(this._apiClient) : super(ResumoInitial());

  refresh() async {
    emit(LoadingResumo());
    try {
      final campeonato = await _apiClient.getResumoCampeonato(idCampeonato, fase);
      emit(ResumoLoaded(campeonato));
    } on DioError catch(e) {
      emit(ResumoError(getDioErrorMessage(e)));
    } catch(error) {
      emit(ResumoError("Erro desconhecido"));
    }
  }

}
