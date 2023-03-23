import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class ProductRegistrationController extends GetxController {
  File? image;
  String productName = '';
  double productPrice = 0.0;

  void selectImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      update();
    } else {
      print('No image selected.');
    }
  }

  void saveProduct() {
    if (productName.isEmpty) {
      Get.snackbar('Error', 'Please enter product name');
      return;
    }
    if (productPrice <= 0.0) {
      Get.snackbar('Error', 'Please enter valid product price');
      return;
    }
    // save product info to database
    Get.snackbar('Success', 'Product saved successfully!');
    clearForm();
  }

  void clearForm() {
    image = null;
    productName = '';
    productPrice = 0.0;
    update();
  }
}
