import 'package:animate_do/animate_do.dart';
import 'package:app_examen_2p_71688/pages/DetailProductPage.dart';
import 'package:app_examen_2p_71688/services/ProductsService.dart';
import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  ProductsService productsService = new ProductsService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          VariableGlobales.titleType,
          style: TextStyle(fontFamily: 'Tenor Sans', fontSize: 22),
        ),
      ),
      body: FutureBuilder(
          future: productsService.getProductsByType(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: Text(
                  'Loading...',
                  style: TextStyle(
                      fontFamily: 'Tenor Sans',
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              );
            }
            return ListView.builder(
              itemCount: snapshot.requireData.length,
              itemBuilder: (BuildContext context, int index) {
                return  FadeInUp(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(snapshot.requireData[index].imageLink), 
                    ),
                    title: Text(
                      snapshot.requireData[index].name,
                      style: const TextStyle(
                          fontFamily: 'Tenor Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      snapshot.requireData[index].priceSign +
                          snapshot.requireData[index].price,
                      style: const TextStyle(
                          fontFamily: 'Tenor Sans',
                          fontSize: 16),
                    ),
                    onTap: () {
                      VariableGlobales.productSelected =
                          snapshot.requireData[index];
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const DetailProductPage()));
                    },
                  ),
                );
              },
            );
          }),
    );
  }
}
