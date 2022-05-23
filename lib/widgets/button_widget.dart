import 'package:app_examen_2p_71688/shared/responsive.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? title;
  final bool? hasColor;
  final void Function()? onPressed;
  final Color? color;
  final double? height;
  final double? width;
  final double? fontSize;
  final bool? otherColor;
  final Color? colorButton;

  const ButtonWidget({
    Key? key,
    this.title,
    this.hasColor,
    this.onPressed,
    this.color,
    this.height = 60.0,
    this.width = -1.0,
    this.fontSize,
    this.otherColor = false,
    this.colorButton = ColorPalette.colorPink4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //hacer validacion para el tamaño del texto de acuerdo al dispositivo.
    double fontSizeButton = 0;
    if (isTab(context) || isDesktop(context)) {
      fontSizeButton = fontSize ?? 20;
    } else if (isMobile(context)) {
      fontSizeButton = fontSize ?? 14;
    }

    return Material(
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        decoration: BoxDecoration(
          color: hasColor! ? ColorPalette.colorPink1 : otherColor! ? colorButton : ColorPalette.colorPink4
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          onTap: onPressed,
          child: SizedBox(
            height: height,
            width: width! < 0 ? MediaQuery.of(context).size.width : width,
            child: Center(
              child: Text(
                title!, 
                style: TextStyle(
                  fontFamily: 'Tenor Sans',
                  color: hasColor! ? ColorPalette.colorPink4 : ColorPalette.colorPink1,
                  fontWeight: FontWeight.w400,
                  fontSize: fontSizeButton
               ),)
            ),
          ),
          ),
      ),
    );
  }
}