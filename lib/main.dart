import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'pt_BR';
  runApp(App());
}