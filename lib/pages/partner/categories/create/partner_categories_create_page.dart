


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:war_corporation_microservices/pages/partner/categories/create/partner_categories_create_controller.dart';

class PartnerCategoriesCreatePage extends StatelessWidget {
  PartnerCategoriesCreateController con =
      Get.put(PartnerCategoriesCreateController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        // height: 50,
        child: _derechosReservados(),
      ),
      body: Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
          Column(
            children: [
              _imageCover(context),
            ],
          )
        ],
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
          top: MediaQuery.of(context).size.height * 0.25, left: 30, right: 30),
      height: MediaQuery.of(context).size.height * 0.65,
      child: SingleChildScrollView(
        child: Column(children: [
          _textYourInfo(),
          _textFieldName(),
          _textFieldDescription(),
          _buttonCreate(context)
        ]),
      ),
    );
  }

  Widget _imageCover(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 15),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/categorias.png',
          width: 150,
          height: 150,
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
            prefixIcon: Icon(Icons.category_outlined)),
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
            hintText: 'Escribe una descripcion de tu categoria',
            prefixIcon: Icon(Icons.description_outlined)),
      ),
    );
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
          'CREAR CATEGORIA',
          style: GoogleFonts.robotoCondensed(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 17),
      child: Text('CREAR CATEGORIAS',
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
