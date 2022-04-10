import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User{
  static String baseUrl = "http://10.0.2.2:8000/api";
  Future<List> getAllUser() async{
    try{
      var res = await http.get(Uri.parse("https://reqres.in/api/users"));
      if(res.statusCode == 200){
        print(jsonDecode(res.body)['data']);
        return jsonDecode(res.body)['data'];
      }
      else{
        return Future.error("erreur serveur");
      }
    }
    catch(err){
      return Future.error(err);
    }
  }

  static Login(BuildContext context, login, password) async{
     try{
      var connection = {"email": login, "password": password};
      var res = await http.post(
        Uri.parse("https://reqres.in/api/login"),
        body: connection
        );
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
  static Ajout(BuildContext context, username, password, email) async{
    
    try{
      var data= {"name":username,"job":email };
      var res = await http.post(
        Uri.parse("https://reqres.in/api/users"), 
        body: data
        );
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