import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PartnerCategoriesCreateController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  //todo: esta instancia tenemos que revisar 
  //CategoriesProvider categoriesProvider = CategoriesProvider();

  void createCategory() async {
    String name = nameController.text;
    String description = descriptionController.text;

    //misma logica de registro

    //if (name.isNotEmpty && description.isNotEmpty) {
    //  Category category = Category(
    //    name: name,
    //    description: description,
    //  );
    //  ResponseApi responseApi = await categoriesProvider.create(category);
    //  Get.snackbar('¡Categoria Creada!', 'Tu categoria se ha creado');
    //  if (responseApi == true) {
    //    clearForm();//si todo es valido, pone en blanco
    //  }
    //} else {
    //  Get.snackbar(
    //      'Formulario no valido', 'Ingresa todos los datos necesarios');
    //}
  }//
//
  void clearForm() {
    nameController.text = '';
    descriptionController.text = '';
  }
}
