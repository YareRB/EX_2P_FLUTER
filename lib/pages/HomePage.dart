import 'package:app_examen_2p_71688/data/User.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:app_examen_2p_71688/widgets/carousel_widget.dart';
import 'package:app_examen_2p_71688/widgets/grid_type_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/NavigationDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: ColorPalette.colorPink1,
      appBar: AppBar(
        title: const Text(
          'YAMILU',
          style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 22),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: 
          [Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Center(
                  child:  Text(
                    'Hola ' + User.usuario.username! + " !",
                    style: const TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 30,
                    ),
                  ),
                ),
                const CarouselWidget(),
                const GridTypeWidget()
              ],
            ),
          ),
        ],
      ),
      drawer: const NavigationDrawerWidget(),
    );
  }
}

class ProductsService {}
