import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dialog_utils.dart';

extension ExtendedContext on BuildContext {
  openUrl(String? url) async {
    if (url == null) {
      showWarningDialog(this, 'URL inválida', 'Não foi possível abrir a URL desejada');
      return;
    }

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      showWarningDialog(this, "Browser não encontrado", "Não foi possível abrir o site. Você possui algum browser instalado?");
    }
  }

}