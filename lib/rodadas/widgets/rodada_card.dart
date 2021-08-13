import 'package:campeonato_brasileiro_flutter/rodadas/cubit/rodadas_cubit.dart';
import 'package:campeonato_brasileiro_flutter/shared/custom_card.dart';
import 'package:campeonato_brasileiro_flutter/shared/error_view.dart';
import 'package:campeonato_brasileiro_flutter/shared/jogo_view.dart';
import 'package:campeonato_brasileiro_flutter/shared/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RodadaCard extends StatelessWidget {
  final int rodada;
  final bool isFirst;
  final bool isLast;
  final VoidCallback onLeftClick;
  final VoidCallback onRightClick;

  const RodadaCard({
    Key? key,
    required this.rodada,
    this.isFirst = false,
    this.isLast = false,
    required this.onLeftClick,
    required this.onRightClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      header: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            visible: !isFirst,
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: onLeftClick,
            ),
          ),
          Text(
            'Rodada $rodada',
            style: Theme.of(context).textTheme.headline6,
          ),
          Visibility(
            visible: !isLast,
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_right),
              onPressed: onRightClick,
            ),
          ),
        ],
      ),
      body: BlocSelector<RodadasCubit, RodadasState, RodadaState>(
        selector: (state) => state.getRodadaState(rodada),
        builder: (context, rodadaState) {
          if (rodadaState is RodadaInitial) {
            return Container();
          } else if (rodadaState is LoadingRodada) {
            return Progress(msg: "Buscando jogos da rodada");
          } else if (rodadaState is RodadaLoaded) {
            return Flexible(
              child: Scrollbar(
                child: ListView(
                  shrinkWrap: true,
                  children: rodadaState.jogos.map((jogo) => JogoView(jogo)).toList(),
                ),
              ),
            );
          } else if (rodadaState is RodadaError) {
            return ErrorView(
              msg: rodadaState.msg,
              tryAgain: () => _loadJogos(context),
            );
          }

          return Center(
            child: ErrorView(tryAgain: () => _loadJogos(context)),
          );
        },
      ),
    );
  }

  _loadJogos(BuildContext context) {
    context.read<RodadasCubit>().initRodada(rodada);
  }
}
