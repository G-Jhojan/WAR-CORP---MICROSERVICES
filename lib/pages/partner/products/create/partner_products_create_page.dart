import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:war_corporation_microservices/pages/partner/products/create/partner_products_create_controller.dart';

class PartnerProductsCreatePage extends StatelessWidget {
  PartnerProductsCreateController con =
      Get.put(PartnerProductsCreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        // height: 50,
        child: _derechosReservados(),
      ),
      body: Obx(
        () => Stack(
          children: [
            _backgroundCover(context),
            _boxForm(context),
            Column(
              children: [
                // _imageCover(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      height: MediaQuery.of(context).size.height *
          0.7, // para ser responsivo,en porcentajes
      color: Colors.indigo,
    );
  }

  Widget _boxForm(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.white, blurRadius: 0, offset: Offset(0, 0.75))
        ],
        border: Border.all(
          color: Colors.black38,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.1, left: 30, right: 30),
      height: MediaQuery.of(context).size.height * 0.8, //altura
      child: SingleChildScrollView(
        child: Column(children: [
          _textYourInfo(),
          _textFieldName(),
          _textFieldPrice(),
          _textFieldDescription(),
         // _dropDownCategories(con.categories),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetBuilder<PartnerProductsCreateController>(
                  builder: (value) => _cardImage(context, con.imageFile1, 1),
                ),
                GetBuilder<PartnerProductsCreateController>(
                  builder: (value) => _cardImage(context, con.imageFile2, 2),
                ),
                GetBuilder<PartnerProductsCreateController>(
                  builder: (value) => _cardImage(context, con.imageFile3, 3),
                ),
              ],
            ),
          ),
      
          _buttonCreate(context)
        ]),
      ),
    );
  }

  List<DropdownMenuItem<String>> _dropDownItems() {
    List<DropdownMenuItem<String>> list = [];
   // categories.forEach((category) {
   //   list.add(DropdownMenuItem(
   //     child: Text(category.name ?? ''),
   //     value: category.id,
   //   ));
   // });
    return list;
  }

  Widget _dropDownCategories(List<dynamic> categories) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      margin: EdgeInsets.only(top: 15),
      child: DropdownButton(
        underline: Container(
          alignment: Alignment.centerRight,
          child: Icon(
            Icons.arrow_drop_down_circle,
            color: Colors.indigo,
          ),
        ),
        elevation: 3,
        isExpanded: true,
        hint: Text(
          'Seleccionar categoria',
          style: TextStyle(fontSize: 15),
        ),
        items: _dropDownItems(),
        value: con.idCategory.value == '' ? null : con.idCategory.value,
        onChanged: (option) {
          print('Opcion seleccionada ${option}');
          con.idCategory.value = option.toString();
        },
      ),
    );
  }

  Widget _imageCover(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/product.png',
          width: 50,
          height: 50,
        ),
      ),
    );
  }

  Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.all(9),
      child: TextField(
        controller: con.nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.indigo)),
            hintText: 'Nombre',
            prefixIcon: Icon(Icons.shopping_bag_outlined)),
      ),
    );
  }

  Widget _textFieldPrice() {
    return Container(
      margin: EdgeInsets.all(9),
      child: TextField(
        controller: con.priceController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.indigo)),
            hintText: 'Precio',
            prefixIcon: Icon(Icons.monetization_on_outlined)),
      ),
    );
  }

  Widget _textFieldDescription() {
    return Container(
      margin: EdgeInsets.all(9),
      child: TextField(
        maxLines: 3,
        controller: con.descriptionController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide(color: Colors.indigo)),
            hintText: 'Escribe una descripcion del producto, dale ¡vida!',
            prefixIcon: Icon(Icons.description_outlined)),
      ),
    );
  }

  Widget _cardImage(BuildContext context, File? imageFile, int numberFile) {
    return GetBuilder<PartnerProductsCreateController>(
        builder: (value) => GestureDetector(
              onTap: () => con.showAlertDialog(context, numberFile),
              child: imageFile != null
                  ? Card(
                      elevation: 3,
                      child: Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: Image.file(
                            imageFile,
                            fit: BoxFit.cover,
                          )
                          // : Image(
                          //   image: AssetImage('assets/product.png')
                          // ),
                          ),
                    )
                  : Card(
                      elevation: 3,
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Image(
                          image: AssetImage('assets/image.png'),
                        ),
                      ),
                    ),
            ));
  }

  Widget _buttonCreate(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 9),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () => con.createCategory(), //clase 54
        child: Text(
          'CREAR PRODUCTO',
          style: GoogleFonts.robotoCondensed(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 17),
      child: Text('NUEVO PRODUCTO',
          style: GoogleFonts.robotoCondensed(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
    );
  }

  Widget _derechosReservados() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Text(
        'Todos los derechos reservados W.A.R CORPORATION® 2023',
        style: GoogleFonts.robotoCondensed(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
