import 'package:animate_do/animate_do.dart';
import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
import 'package:flutter/material.dart';

import '../utelerias/ColorPalette.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorPalette.colorPink1,
        appBar: AppBar(
          title: text('Detalle producto', 22, FontWeight.normal,
              ColorPalette.colorPink3),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: 
            [Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  text(VariableGlobales.productSelected.name!, 25, FontWeight.bold,
                      ColorPalette.colorPink1),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 15),
                    child: Center(
                      child: ZoomIn(
                        child: Container(
                            width: 250,
                            height: 250,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: NetworkImage(VariableGlobales
                                        .productSelected.imageLink!)))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: text(
                        'Type Product: ' +
                            VariableGlobales.productSelected.productType!,
                        19,
                        FontWeight.normal,
                        ColorPalette.colorPink2),
                  ),
                   text(
                        VariableGlobales.productSelected.priceSign! +
                            VariableGlobales.productSelected.price!,
                        22,
                        FontWeight.bold,
                        ColorPalette.colorPink1),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: text(VariableGlobales.productSelected.description!, 19,
                        FontWeight.normal, ColorPalette.colorPink1),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget text(String text, double fontS, FontWeight fontW, Color bkgColor) {
  return Text(text,
      style: TextStyle(
          fontFamily: 'Tenor Sans',
          fontSize: fontS,
          fontWeight: fontW,
          backgroundColor: bkgColor));
}
