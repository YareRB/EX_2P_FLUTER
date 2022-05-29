import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:flutter/material.dart';

import '../shared/responsive.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIconData;
  final IconData? suffixIconData;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final bool? isSuffixIcon;
  final bool? isPrefixIcon;
  final void Function()? onTap;
  final bool? readOnly;
  final bool? otherColor;
  final Color? color;
  final int? maxLong;
  final void Function()? onSuffixIconTap;
  final bool? isMaxLong;
  final bool? isFilled;
  final TextEditingController? controller; //para poder obtener el texto escrito
  final bool? isMyControllerActivate;

  const TextFieldWidget({
    Key? key,
    this.hintText,
    this.prefixIconData,
    this.suffixIconData,
    this.onChanged,
    this.obscureText = false,
    this.isSuffixIcon = false,
    this.isPrefixIcon = false,
    this.onTap,
    this.readOnly = false,
    this.otherColor = false,
    this.color = ColorPalette.colorPink2,
    this.maxLong = 50,
    this.onSuffixIconTap,
    this.isMaxLong = false,
    this.isFilled = false,
    this.controller,
    this.isMyControllerActivate = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fontSizeTextField = 0;
    if (isTab(context) || isDesktop(context)) {
      fontSizeTextField = 20;
    } else if (isMobile(context)) {
      fontSizeTextField = 14;
    }

    return TextFormField(
      maxLength: isMaxLong! == false ? null : maxLong,
      controller: isMyControllerActivate! == false ? null : controller,
      textInputAction: TextInputAction.done,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: readOnly!,
      obscureText: obscureText!,
      cursorColor: color,
      style: TextStyle(
        color: color,
        fontFamily: 'Tenor Sans',
        fontSize: fontSizeTextField,
      ),
      decoration: InputDecoration(
          labelStyle: TextStyle(color: color),
          focusColor: color,
          filled: isFilled,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: BorderSide(color: color!)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.0),
              borderSide: BorderSide(color: color!)),
          labelText: hintText,
          prefixIcon: isPrefixIcon == false
              ? null
              : Icon(
                  prefixIconData,
                  size: 30,
                  color: color,
                ),
          suffixIcon: isSuffixIcon == false
              ? null
              : GestureDetector(
                  onTap: onSuffixIconTap,
                  child: Icon(
                    suffixIconData,
                    size: 25,
                    color: color,
                  ),
                )),
    );
  }
}
