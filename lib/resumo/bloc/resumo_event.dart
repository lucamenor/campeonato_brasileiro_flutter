part of 'resumo_bloc.dart';

abstract class ResumoEvent extends Equatable {
  const ResumoEvent();

  @override
  List<Object> get props => [];
}

class RefreshResumo extends ResumoEvent {}