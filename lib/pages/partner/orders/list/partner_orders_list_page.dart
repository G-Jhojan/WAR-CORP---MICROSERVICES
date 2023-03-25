

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:war_corporation_microservices/pages/widgets/product_card.dart';
import 'package:war_corporation_microservices/ui_ux/fonts_styles.dart';

class PartnerOrdersListPage extends StatelessWidget {
   //PartnerOrdersListController con = Get.put(PartnerOrdersListController());
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Productos',
          style:EstiloTextos.miEstilo(
            color: Colors.white, 
            fontSize: 20, 
            fontWeight: FontWeight.w500
            )
          ),
      ),
//todo: centro mismo de la aplicación
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) =>GestureDetector(
          onTap: ()=> Get.toNamed('PartnerOrdersCreatePage'),
          child: ProductCard(),
        )
      ),

//todo:parte inferior a la aplicación
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed:(){} 
      ),

    );
  }
}
