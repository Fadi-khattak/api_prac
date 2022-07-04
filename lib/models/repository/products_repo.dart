import 'package:cubit_restapi/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsRepo
{
  static Future<ProductsModel?> getData()async
  {
    try{
      var responce =await http.Client().get(Uri.parse("https://dummyjson.com/products"));
      if(responce.statusCode==200)
        {
          final products=ProductsModel.fromRawJson(responce.body);
          return products;
        }
      else
        {
          return null;
        }
    }catch(err)
    {
      throw err;
    }
  }
}