import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:war_corporation_microservices/pages/partner/profile/info/partner_profile_info_controller.dart';

class PartnerProfileInfoPage extends StatelessWidget {
  PartnerProfileInfoController con = Get.put(PartnerProfileInfoController());

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
          _buttonBack(),
          Column(children: [
            _imageCover(context),
          ],)
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
          _textFieldEmail(),
          _textFieldName(),
          _textFieldLastName(),
          _textFieldPhone(),
          _buttonRegister(context)
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
          'assets/perfil.png',
          width: 120,
          height: 120,
        ),
      ),
    );
  }


  Widget _buttonBack() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        child: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.all(5),
      child: ListTile(
        leading: Icon(Icons.email),
        title: Text('jhojanrock98@hotmail.com'),
        subtitle: Text('e-mail'),
      )
    );
  }

  Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.all(5),
      child:  ListTile(
        leading: Icon(Icons.person),
        title: Text('Jhojan '),
        subtitle: Text('Nombre'),
      )
    );
  }

  Widget _textFieldLastName() {
    return Container(
      margin: EdgeInsets.all(5),
      child: ListTile(
        leading: Icon(Icons.person_outline),
        title: Text('Guerra'),
        subtitle: Text('Apellido'),
      )
    );
  }

  Widget _textFieldPhone() {
    return Container(
      margin: EdgeInsets.all(5),
      child: ListTile(
        leading: Icon(Icons.phone),
        title: Text('65456456'),
        subtitle: Text('telefono'),
      )
    );
  }

 
  Widget _buttonRegister(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 9, horizontal: 9),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: ()=> con.signOut(),
        child: Text(
          'CERRAR SESIÓN',
          style: GoogleFonts.robotoCondensed(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _textYourInfo() {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 3),
      child: Text('PERFIL',
          style: GoogleFonts.robotoCondensed(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18)),
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
