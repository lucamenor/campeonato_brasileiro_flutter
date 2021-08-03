import 'package:campeonato_brasileiro_flutter/resumo/cubit/resumo_cubit.dart';
import 'package:campeonato_brasileiro_flutter/resumo/widgets/resumo_loaded_view.dart';
import 'package:campeonato_brasileiro_flutter/shared/background.dart';
import 'package:campeonato_brasileiro_flutter/shared/error_view.dart';
import 'package:campeonato_brasileiro_flutter/shared/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

class ResumoPage extends StatelessWidget {
  const ResumoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ResumoCubit(context.read<GloboEsporteApiClient>())..refresh(),
      child: ResumoView(),
    );
  }
}

class ResumoView extends StatelessWidget {
  const ResumoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Background(),
          BlocBuilder<ResumoCubit, ResumoState>(
            builder: (context, state) {
              if (state is ResumoInitial) {
                return Progress();
              } else if (state is LoadingResumo) {
                return Progress(msg: "Buscando dados do campeonato");
              } else if (state is ResumoLoaded) {
                return ResumoLoadedView(state.campeonato);
              } else if (state is ResumoError) {
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
    context.read<ResumoCubit>().refresh();
  }
}
