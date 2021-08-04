import 'package:campeonato_brasileiro_flutter/resumo/cubit/resumo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  final Edicao edicao;

  const Header(this.edicao, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("⚽", style: TextStyle(fontSize: 48.0)),
            SizedBox(width: 16.0),
            Expanded(
              child: Text(
                edicao.nome,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
            ),
            IconButton(
              onPressed: () {
                context.read<ResumoCubit>().refresh();
              },
              icon: Icon(Icons.refresh),
              color: Colors.white,
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Row(
            children: [
              Text(
                'Início: ',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              Text(
                DateFormat.yMd().format(edicao.dataInicio),
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              Text(
                'Fim: ',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              Text(
                DateFormat.yMd().format(edicao.dataFim),
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
