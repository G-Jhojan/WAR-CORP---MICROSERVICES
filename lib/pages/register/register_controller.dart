import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:war_corporation_microservices/utils/api_endpoints.dart';
import 'package:http/http.dart' as http;


class RegisterController extends GetxController{

  TextEditingController emailController    = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController     = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

//todo: aqui hacemos asincronismo
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

Future<void> registerWithEmail() async {
  try {
    var headers = {'Content-Type': 'application/json'};
    var url = Uri.parse(
        ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.registerEmail);
    Map body = {
      'email': emailController.text.trim(),
      'password': passwordController.text
    };

    http.Response response =
        await http.post(url, body: jsonEncode(body), headers: headers);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      if (json['code'] == 0) {
        // Eliminar la asignación del token
        final SharedPreferences? prefs = await _prefs;
        emailController.clear();
        passwordController.clear();
        //Get.off(HomeScreen());
      } else {
        throw jsonDecode(response.body)["message"] ?? "Unknown Error Occured";
      }
    } else {
      throw jsonDecode(response.body)["Message"] ?? "Unknown Error Occured";
    }
  } catch (e) {
    Get.back();
    showDialog(
        context: Get.context!,
        builder: (context) {
          return SimpleDialog(
            title: Text('Error'),
            contentPadding: EdgeInsets.all(20),
            children: [Text(e.toString())],
          );
        });
    }
  }

}