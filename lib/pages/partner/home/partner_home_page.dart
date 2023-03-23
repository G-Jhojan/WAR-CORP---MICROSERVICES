

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:war_corporation_microservices/pages/partner/categories/create/partner_categories_create_page.dart';
import 'package:war_corporation_microservices/pages/partner/home/partner_home_controller.dart';
import 'package:war_corporation_microservices/pages/partner/orders/list/partner_orders_list_page.dart';
import 'package:war_corporation_microservices/pages/partner/products/create/partner_products_create_page.dart';
import 'package:war_corporation_microservices/pages/partner/profile/info/partner_profile_info_page.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_animated_bottom_bar.dart';

class PartnerHomePage extends StatelessWidget {
  PartnerHomeController con = Get.put(PartnerHomeController());
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: _bottomBar () ,
      body: Obx(() => 
        IndexedStack(
          index: con.indexTab.value,
          children:  [
            PartnerCategoriesCreatePage(),
            PartnerOrdersListPage(),
            PartnerProductsCreatePage(),
            PartnerProfileInfoPage()
          ],
        ),
      )
    );
  }

  Widget _bottomBar (){
    return Obx(() => CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.indigoAccent,
      showElevation: true,
      itemCornerRadius: 29,
      curve: Curves.easeIn,
      selectedIndex:con.indexTab.value,
      onItemSelected: (index)=> con.changeTab(index),
      items:  [
        BottomNavyBarItem (
          icon: const Icon(Icons.apps),
          title: const Text('CATEGORIAS'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
    ),
        BottomNavyBarItem (
          icon: const Icon(Icons.list_alt_outlined),
          title: const Text('ORDENES'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
    ),
      BottomNavyBarItem (
          icon: const Icon(Icons.playlist_add_circle_outlined),
          title: const Text('PRODUCTOS'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
    ), BottomNavyBarItem (
          icon: const Icon(Icons.person_outline),
          title: const Text('PERFIL'),
          activeColor: Colors.white,
          inactiveColor: Colors.black
    )
      ],

    ));
  }
}
