import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/pages/widgets/background_page.dart';
import 'package:war_corporation_microservices/pages/widgets/boxForm_widget.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [
           BackgroundPage(),// ahora si estamos abajo del boxForm
           SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 220,),
                BoxForm(),

              ],
            )
          ),// para que pueda moverse por si solo
        ],
      )
    );
  }
}