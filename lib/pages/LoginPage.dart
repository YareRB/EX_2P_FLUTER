import 'package:animate_do/animate_do.dart';
import 'package:app_examen_2p_71688/data/User.dart';
import 'package:app_examen_2p_71688/pages/HomePage.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:app_examen_2p_71688/utelerias/GlobalAlert.dart';
import 'package:app_examen_2p_71688/widgets/button_widget.dart';
import 'package:app_examen_2p_71688/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController _controllerUser = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FadeInUp(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Center(
              child: Text('LOGIN',
                  style: TextStyle(
                      color: ColorPalette.colorPink1,
                      fontFamily: 'Tenor Sans',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 15.0, right: 30.0),
            child: TextFieldWidget(
              isPrefixIcon: true,
              prefixIconData: Icons.person,
              isMyControllerActivate: true,
              controller: _controllerUser,
              onSuffixIconTap: () {
                print('Click');
              },
              hintText: 'Username',
              onChanged: (String value) {
                print(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, top: 20.0, right: 30.0, bottom: 20.0),
            child: TextFieldWidget(
              obscureText: true,
              isPrefixIcon: true,
              prefixIconData: Icons.lock,
              isSuffixIcon: false,
              suffixIconData: Icons.remove_red_eye,
              isMyControllerActivate: true,
              controller: _controllerPassword,
              onSuffixIconTap: () {
                print('Click');
              },
              hintText: 'Password',
              onChanged: (String value) {
                print(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ButtonWidget(
                title: 'L O G I N',
                otherColor: true,
                colorButton: ColorPalette.colorPink4,
                width: 200.0,
                height: 40.0,
                hasColor: false,
                onPressed: () {
                  if (_controllerUser.text.isEmpty ||
                      _controllerPassword.text.isEmpty) {
                    GlobalAlert.alertWarning(
                        context,
                        'Please complete the fields',
                        'Empty Fields',
                        ColorPalette.colorPink3);
                  } else {
                    if (_controllerUser.text == User.usuario.username &&
                        _controllerPassword.text == User.usuario.password) {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const HomePage()));
                    } else {
                      GlobalAlert.alertError(
                          context,
                          'Please enter de correct credentials',
                          'Wrong Credentials',
                          ColorPalette.colorPink3);
                    }
                  }
                }),
          ),
        ]),
      ),
    );
  }
}

Widget textFieldC(
    IconData icono, String hintT, TextEditingController controller) {
  return Padding(
    padding: const EdgeInsets.only(left: 30.0, top: 20.0, right: 30.0),
    child: TextFieldWidget(
      hintText: hintT,
      isPrefixIcon: true,
      prefixIconData: icono,
      isMyControllerActivate: true,
      controller: controller,
      onSuffixIconTap: () {
        print('Click');
      },
      onChanged: (String value) {
        print(value);
      },
    ),
  );
}
