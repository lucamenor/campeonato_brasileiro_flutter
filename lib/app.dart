import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:globo_esporte_api/globo_esporte_api.dart';
import 'package:google_fonts/google_fonts.dart';

import 'resumo/resumo.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<GloboEsporteApiClient>(
      create: (_) => GloboEsporteApiClient(Dio()),
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: Color(0xFF48A43F),
        primaryColorDark: Color(0xFF157422),
        accentColor: Color(0xFFe9e918),
        textTheme: GoogleFonts.montserratTextTheme(textTheme),
        brightness: Brightness.dark,
      ),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: [const Locale('pt', 'BR')],
      home: ResumoPage(),
    );
  }
}
