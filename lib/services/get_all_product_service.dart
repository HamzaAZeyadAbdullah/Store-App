import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> prouductsList = [];

    for (int i = 0; i < data.length; i++) {
      prouductsList.add(
        ProductModel.fromeJson(data[i]),
      );
    }
    return prouductsList;
  }
}
