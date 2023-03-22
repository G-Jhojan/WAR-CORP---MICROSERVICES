import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/pages/login/login_page.dart';
import 'package:war_corporation_microservices/pages/register/register_page.dart';

final List<Map<String, dynamic>> routes = [
  {
    'path': 'login',
    'page': (BuildContext context) => LoginPage(),
  },
  {
    'path': 'register',
    'page': (BuildContext context) => RegisterPage(),
  },

];
