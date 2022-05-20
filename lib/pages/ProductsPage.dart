import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  final String? product;


  const ProductsPage({ Key? key, this.product }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print(VariableGlobales.paramer);
    return Scaffold(
    
      appBar: AppBar(
        title: Text(VariableGlobales.titleType, style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 22),),
      ),
      body: Center(
        child: Text('PRODUCTS HERE'),
      ),
    );
  }
}