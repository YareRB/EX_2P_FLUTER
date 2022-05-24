import 'package:animate_do/animate_do.dart';
import 'package:app_examen_2p_71688/pages/ProductsPage.dart';
import 'package:app_examen_2p_71688/utelerias/ColorPalette.dart';
import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
import 'package:app_examen_2p_71688/yamilu_icons.dart';
import 'package:flutter/material.dart';
import 'package:app_examen_2p_71688/yamilu_icons.dart';

class GridTypeWidget extends StatelessWidget {
  const GridTypeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250.0,
        child: ListView(
          padding: const EdgeInsets.all(10),
          scrollDirection: Axis.horizontal, // deja hacer scroll
          children: [
            Column(
              children: [
                Row(
                  children: [
                    item(Yamilu.blush, "blush", "Blush", context),
                    item(Yamilu.bronzer, "bronzer", "Bronzer", context),
                    item(Yamilu.eyebrow, "eyebrow", "Eyebrow", context),
                    item(Yamilu.eyerliner, "eyeliner", "Eyeliner", context),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    children: [
                      item(Yamilu.eyeshadow, "eyeshadow", "Eyeshadow", context),
                      item(
                          Yamilu.foundation, "foundation", "Foundation", context),
                      item(Yamilu.lipliner, "lipliner", "Lip liner", context),
                      item(Yamilu.lipstick, "lipstick", "Lipstick", context),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    children: [
                      item(Yamilu.mascara_1, "mascara", "Mascara", context),
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

Widget item(IconData icono, String typeP, String title, BuildContext context) {
  return FadeInUp(
    child: Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
          color: ColorPalette.colorPink2,
          width: 60,
          height: 60,
          child: IconButton(
            icon: Icon(
              icono,
              size: 45,
              color: Colors.black,
            ),
            onPressed: () {
              VariableGlobales.typeProduct = typeP;
              VariableGlobales.titleType = title;
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => const ProductsPage()));
            },
          )),
    ),
  );
}
