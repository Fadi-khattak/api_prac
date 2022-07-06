import 'dart:convert';

import 'package:cubit_restapi/models/login_model.dart';
import 'package:http/http.dart' as http;

class LoginRepo
{
   static final client=http.Client();

  static Future<LoginModel?> doLogin(String email,String password)async
  {
    try{
      var body=jsonEncode(
          {
            'email':email,
            'password':password
          }
      );
      String url="http://restapi.adequateshop.com/api/authaccount/login";
      var responce=await client.post(
        Uri.parse(url),
        body: body,
        headers: {"Content-Type": "application/json"},
      );

      if(responce.statusCode==200 || responce.statusCode==201)
        {
          print(responce.statusCode);
          LoginModel model=LoginModel.fromRawJson(responce.body);
          print(model.message);
          return model;

        }
      return null;
    }catch(e)
    {

      return null;
    }
  }

}