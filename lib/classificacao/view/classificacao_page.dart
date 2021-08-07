import 'package:campeonato_brasileiro_flutter/classificacao/cubit/classificacao_cubit.dart';
import 'package:campeonato_brasileiro_flutter/classificacao/widgets/classificacao_loaded_view.dart';
import 'package:campeonato_brasileiro_flutter/shared/background.dart';
import 'package:campeonato_brasileiro_flutter/shared/error_view.dart';
import 'package:campeonato_brasileiro_flutter/shared/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassificacaoPage extends StatelessWidget {
  final String fase;

  const ClassificacaoPage({Key? key, required this.fase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = ClassificacaoCubit(apiClient: context.read(), fase: fase);
        cubit.refresh();
        return cubit;
      },
      child: ClassificacaoView(),
    );
  }
}

class ClassificacaoView extends StatelessWidget {
  const ClassificacaoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classificação'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ClassificacaoCubit>().refresh();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Background(),
          BlocBuilder<ClassificacaoCubit, ClassificacaoState>(
            builder: (context, state) {
              if (state is ClassificacaoInitial) {
                return Progress();
              } else if (state is LoadingClassificacao) {
                return Progress(msg: "Buscando classificação atualizada");
              } else if (state is ClassificacaoLoaded) {
                return ClassificacaoLoadedView(
                  classificacoes: state.classificacoes,
                  faixasClassificacoes: state.faixasClassificacoes,
                );
              } else if (state is ClassificacaoError) {
                return ErrorView(
                  msg: state.msg,
                  tryAgain: () => _refresh(context),
                );
              }

              return Center(
                child: ErrorView(tryAgain: () => _refresh(context)),
              );
            },
          ),
        ],
      ),
    );
  }

  void _refresh(BuildContext context) {
    context.read<ClassificacaoCubit>().refresh();
  }
}
