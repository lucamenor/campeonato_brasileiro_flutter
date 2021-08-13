import 'package:campeonato_brasileiro_flutter/rodadas/cubit/rodadas_cubit.dart';
import 'package:campeonato_brasileiro_flutter/rodadas/widgets/rodada_card.dart';
import 'package:campeonato_brasileiro_flutter/shared/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';

class RodadasPage extends StatelessWidget {
  final String fase;
  final Rodada rodada;

  const RodadasPage({
    Key? key,
    required this.fase,
    required this.rodada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => RodadasCubit(
        apiClient: ctx.read(),
        fase: fase,
        qtdeRodadas: rodada.ultima,
      )..initRodada(rodada.atual),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Rodadas'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Background(),
            RodadasView(fase: fase, rodada: rodada),
          ],
        ),
      ),
    );
  }
}

class RodadasView extends StatefulWidget {
  final String fase;
  final Rodada rodada;

  const RodadasView({
    Key? key,
    required this.fase,
    required this.rodada,
  }) : super(key: key);

  @override
  _RodadasViewState createState() => _RodadasViewState();
}

class _RodadasViewState extends State<RodadasView> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: widget.rodada.atual - 1,
      viewportFraction: 0.88,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: PageView.builder(
        itemCount: widget.rodada.ultima,
        controller: _controller,
        onPageChanged: (index) {
          final rodada = index + 1;
          context.read<RodadasCubit>().initRodada(rodada);
        },
        itemBuilder: (_, i) {
          return RodadaCard(
            rodada: i + 1,
            isFirst: i == 0,
            isLast: i == widget.rodada.ultima - 1,
            onLeftClick: () {
              _controller.previousPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
            onRightClick: () {
              _controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            },
          );
        },
      ),
    );
  }
}
