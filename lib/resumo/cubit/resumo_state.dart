part of 'resumo_cubit.dart';

abstract class ResumoState extends Equatable {
  const ResumoState();
  
  @override
  List<Object> get props => [];
}

class ResumoInitial extends ResumoState {}

class LoadingResumo extends ResumoState {}

class ResumoLoaded extends ResumoState {
  final Campeonato campeonato;

  ResumoLoaded(this.campeonato);

  @override
  List<Object> get props => [campeonato];
}

class ResumoError extends ResumoState {
  final String msg;

  ResumoError(this.msg);

  @override
  List<Object> get props => [msg];
}