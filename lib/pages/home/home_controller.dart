
import 'package:get/get.dart';

class HomeController extends GetxController {
  //User user = User.fromJson(GetStorage().read('user') ?? {});
  //HomeController() {
  //  print('usuario de sesion: ${user.toJson}');
  //}

    void goToRolesPages(){
       Get.toNamed('/roles');
  }

  void signOut() { //para cerrar sesion 
    //GetStorage().remove('user');
    Get.offNamedUntil('/', (route) => false); // elimina todo el historial de pantallas
  }
}
