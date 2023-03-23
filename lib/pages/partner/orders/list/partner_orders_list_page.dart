

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:war_corporation_microservices/pages/partner/orders/list/partner_orders_list_controller.dart';

class PartnerOrdersListPage extends StatelessWidget {
   PartnerOrdersListController con = Get.put(PartnerOrdersListController());
  
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text('PARTNER ORDERS LIST PAGE')),
    );
  }
}
