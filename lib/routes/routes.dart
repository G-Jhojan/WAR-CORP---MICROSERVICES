
import 'package:war_corporation_microservices/pages/widgets/background_page.dart';
import 'package:war_corporation_microservices/routes/router_exports.dart';

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
  /// todo: fernando herrera
    {
    'path': 'ProductsScreen',
    'page': (BuildContext context) => ProductsScreen(),
  },
  {
    'path': 'BackgroundPage',
    'page': (BuildContext context) => BackgroundPage(),
  },







];
