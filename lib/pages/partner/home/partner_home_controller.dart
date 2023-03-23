import 'package:get/get.dart';

class PartnerHomeController extends GetxController {
  var helloworld = 'HOLA MUNDO'.obs;
  var indexTab = 0.obs;

  void changeTab(int index) {
    // es la posicion de donde se encuentra el usuario
    indexTab.value = index;
  }

  void changeVar() {
    helloworld.value = 'GOOD BYE';
  }
}
