import 'package:app_examen_2p_71688/pages/HomePage.dart';
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
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'YAMILU',
                  style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 22),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100,right: 5), //EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 28.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          body: HomePage(),
          drawer: NavigationDrawerWidget(),
        ));
  }
}
