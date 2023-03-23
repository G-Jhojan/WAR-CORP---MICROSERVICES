import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class PartnerProfileInfoController extends GetxController {
  // User user = User.fromJson(GetStorage().read('user')); 
  //de aqui sera de donde sacare toda la informacion 

  void signOut() { //para cerrar sesion 
    GetStorage().remove('user');
    Get.offNamedUntil('/', (route) => false); // elimina todo el historial de pantallas
  }


}
