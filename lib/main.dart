import 'package:app_examen_2p_71688/pages/HomePage.dart';
import 'package:app_examen_2p_71688/pages/LoginPage.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:app_examen_2p_71688/widgets/NavigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SOLO VERTICAL
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
        title: 'YAMILU',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: ColorPalette.colorPinkMaterial4,
        ),
        home: Scaffold(
          body: LoginPage(),
        ));
  }
}
