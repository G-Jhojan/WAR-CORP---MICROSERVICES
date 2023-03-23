import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:war_corporation_microservices/pages/home/home_controller.dart';

class HomePage extends StatelessWidget {

  HomeController con = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => con.signOut(),
              child:  Text('CERRAR SESION', 
              style:GoogleFonts.robotoCondensed(color:Colors.white ),),
              ),
            ElevatedButton(
              onPressed: () => con.goToRolesPages(),
              child:  Text('IR A ROLES ', 
              style:GoogleFonts.robotoCondensed(color:Colors.white ),),
              ),
          ],
        ),
      ),
    );
  }
}





