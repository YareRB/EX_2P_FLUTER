import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';

import 'ColorPalette.dart';

class GlobalAlert {
  static void alertWarning(BuildContext context, String mensaje, String titulo, Color backgroundColorCustom ) {
          CoolAlert.show(
          context: context,
          backgroundColor: backgroundColorCustom,
          type: CoolAlertType.warning,
          title: titulo,
          text: mensaje,
          loopAnimation: false,
          confirmBtnColor: backgroundColorCustom,
          
        );
  }

  static void alertError(BuildContext context, String mensaje, String titulo, Color backgroundColorCustom ) {
          CoolAlert.show(
          context: context,
          backgroundColor: backgroundColorCustom,
          type: CoolAlertType.error,
          title: titulo,
          text: mensaje,
          loopAnimation: false,
          confirmBtnColor: backgroundColorCustom,
          
        );
  }
}