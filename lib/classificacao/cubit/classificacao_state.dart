part of 'classificacao_cubit.dart';

abstract class ClassificacaoState extends Equatable {
  const ClassificacaoState();
  
  @override
  List<Object> get props => [];
}

class ClassificacaoInitial extends ClassificacaoState {}

class LoadingClassificacao extends ClassificacaoState {}

class ClassificacaoLoaded extends ClassificacaoState {
  final List<Classificacao> classificacoes;
  final List<FaixaClassificacao> faixasClassificacoes;

  ClassificacaoLoaded({required this.classificacoes, required this.faixasClassificacoes});

  @override
  List<Object> get props => [classificacoes, faixasClassificacoes];
}

class ClassificacaoError extends ClassificacaoState {
  final String msg;

  ClassificacaoError(this.msg);

  @override
  List<Object> get props => [msg];
}