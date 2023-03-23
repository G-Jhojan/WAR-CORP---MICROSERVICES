import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/pages/login/login_page.dart';
import 'package:war_corporation_microservices/pages/partner/categories/create/parternet_categories_create_screen.dart';
import 'package:war_corporation_microservices/pages/partner/categories/create/partner_categories_create_page.dart';
import 'package:war_corporation_microservices/pages/partner/home/partner_home_page.dart';
import 'package:war_corporation_microservices/pages/partner/orders/list/partner_orders_list_page.dart';
import 'package:war_corporation_microservices/pages/partner/products/create/partner_products_create_page.dart';
import 'package:war_corporation_microservices/pages/partner/products/create/partner_products_create_screen.dart';
import 'package:war_corporation_microservices/pages/partner/profile/info/partner_profile_info_page.dart';
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
  //todo: PARTNER
  {
    'path': 'PartnerHomePage',
    'page': (BuildContext context) => PartnerHomePage(),
  },
  {
    'path': 'PartnerCategoriesCreatePage',
    'page': (BuildContext context) => PartnerCategoriesCreatePage(),
  },
  {
    'path': 'PartnerOrdersListPage',
    'page': (BuildContext context) => PartnerOrdersListPage(),
  },
  {
    'path': 'PartnerProfileInfoPage',
    'page': (BuildContext context) => PartnerProfileInfoPage(),
  },

    {
    'path': 'PartnerProductsCreatePage',
    'page': (BuildContext context) => PartnerProductsCreatePage(),
  },
  {
    'path': 'PartnerCategoriesCreateScreen',
    'page': (BuildContext context) => PartnerCategoriesCreateScreen(),
  },
    {
    'path': 'ProductsScreen',
    'page': (BuildContext context) => ProductsScreen(),
  },







];
