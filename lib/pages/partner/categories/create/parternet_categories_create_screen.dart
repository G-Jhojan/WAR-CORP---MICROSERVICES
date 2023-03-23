import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_logo.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_terminos.dart';

class PartnerCategoriesCreateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff2f2f2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height*0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(
                    titulo: 'CATEGORIAS', 
                    imageurl: 'assets/categorias.png',
                    imgDimention: 110,
                    ), 
                  BoxForm(), 
                  Terminos()
                ],
              ),
            ),
          ),
        ));
  }
}

class BoxForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          top: MediaQuery.of(context).size.height * 0.01, left: 30, right: 30),
      height: MediaQuery.of(context).size.height * 0.4,
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
}

Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.all(9),
      child: TextField(
        //controller: con.nameController,
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
        //controller: con.descriptionController,
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
        onPressed: (){}, //=> con.createCategory(), //clase 54
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