part of 'rodadas_cubit.dart';

class RodadasState extends Equatable {
  final List<RodadaState> rodadas;

  RodadasState(this.rodadas);

  RodadasState.init(int qtdeRodadas) : rodadas = List<RodadaState>.filled(qtdeRodadas, RodadaInitial());

  RodadaState getRodadaState(int rodada) => rodadas[rodada - 1];

  @override
  List<Object> get props => [rodadas];

  RodadasState copyWith(int rodada, RodadaState state) {
    final rodadasAtualizadas = [...rodadas];
    rodadasAtualizadas[rodada] = state;
    return RodadasState(rodadasAtualizadas);
  }
}

abstract class RodadaState extends Equatable {
  const RodadaState();

  @override
  List<Object?> get props => [];
}

class RodadaInitial extends RodadaState {}

class LoadingRodada extends RodadaState {}

class RodadaLoaded extends RodadaState {
  final List<Jogo> jogos;

  RodadaLoaded(this.jogos);

  @override
  List<Object> get props => [jogos];
}

class RodadaError extends RodadaState {
  final String msg;

  RodadaError(this.msg);

  @override
  List<Object> get props => [msg];
}
