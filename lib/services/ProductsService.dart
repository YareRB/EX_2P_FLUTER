import 'dart:async';
import 'package:app_examen_2p_71688/data/Product.dart';
import 'package:app_examen_2p_71688/utelerias/VariableGlobales.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductsService {
  String x = "products.json";
  Future<List<Product>> getProducts() async {
    var url = Uri.parse('https://makeup-api.herokuapp.com/api/v1/'+x);
    var response = await http.get(url);
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
    List<Product> products = parsed.map<Product>((json) => Product.fromJson(json)).toList();
    return products;
  }

  Future<List<Product>> getProductsByType() async {
    var url = Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?product_type=' + VariableGlobales.typeProduct);
    var response = await http.get(url);
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
    List<Product> products = parsed.map<Product>((json) => Product.fromJson(json)).toList();
    return products;
  }

}
