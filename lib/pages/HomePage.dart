import 'package:app_examen_2p_71688/data/User.dart';
import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
import 'package:app_examen_2p_71688/widgets/carousel_widget.dart';
import 'package:app_examen_2p_71688/widgets/grid_type_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/NavigationDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAMILU',
          style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 22),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Center(
              child: Text(
                'Hola ' + User.usuario.username! + " !",
                style: TextStyle(
                  fontFamily: 'Acme',
                  fontSize: 30,
                ),
              ),
            ),
            const CarouselWidget(),
            GridTypeWidget()
          ],
        ),
      ),
      drawer: NavigationDrawerWidget(),
    );
  }
}

class ProductsService {}
