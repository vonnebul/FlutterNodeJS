import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User{
  static String baseUrl = "http://10.0.2.2:8000/api";
  Future<List> getAllUser() async{
    try{
      var res = await http.get(Uri.parse(baseUrl+'/user'));
      if(res.statusCode == 200){
        return jsonDecode(res.body);
      }
      else{
        return Future.error("erreur serveur");
      }
    }
    catch(err){
      return Future.error(err);
    }
  }

  static Login(BuildContext context) async{
     try{
      var res = await http.get(Uri.parse(baseUrl+'/login'));
      if(res.statusCode == 200){
        Navigator.pushNamed(context, '/liste');
      }
      else{
        Navigator.pushNamed(context, '/');
      }
    }
    catch(err){
      return Future.error(err);
    }
   }
}