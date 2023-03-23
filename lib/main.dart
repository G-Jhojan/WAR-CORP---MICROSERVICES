import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:war_corporation_microservices/routes/routes.dart';
import 'package:war_corporation_microservices/utils/app_theme.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //definimos la ruta cambiando
      debugShowCheckedModeBanner: false,
      title: 'WAR CORPORATION',
      initialRoute: 'ProductsScreen',
      onGenerateRoute: (settings) {
        final route =
        routes.firstWhere((route) => route['path'] == settings.name);
        final page = route['page'];
        return MaterialPageRoute(builder: page, settings: settings);
      },
       theme: AppTheme.getTheme()
    );
  }
}