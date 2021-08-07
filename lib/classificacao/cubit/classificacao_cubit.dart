import 'package:bloc/bloc.dart';
import 'package:campeonato_brasileiro_flutter/util/constants.dart';
import 'package:campeonato_brasileiro_flutter/util/dio_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

part 'classificacao_state.dart';

class ClassificacaoCubit extends Cubit<ClassificacaoState> {
  final GloboEsporteApiClient apiClient;
  final String fase;

  ClassificacaoCubit({
    required this.apiClient,
    required this.fase,
  }) : super(ClassificacaoInitial());

  refresh() async {
    emit(LoadingClassificacao());
    try {
      final campeonato = await apiClient.getResumoCampeonato(idCampeonato, fase);
      emit(ClassificacaoLoaded(
        classificacoes: campeonato.classificacao,
        faixasClassificacoes: campeonato.faixasClassificacao,
      ));
    } on DioError catch (e) {
      emit(ClassificacaoError(getDioErrorMessage(e)));
    } catch (error) {
      emit(ClassificacaoError("Erro desconhecido"));
    }
  }
}
