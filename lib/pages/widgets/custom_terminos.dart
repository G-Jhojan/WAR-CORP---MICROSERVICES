import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Terminos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Text('Todos los Derechos Reservados - WAR CORPORATION.®',
              style: GoogleFonts.robotoCondensed(
              fontSize: 12, 
              fontWeight: FontWeight.w300, 
              color: Colors.black
        )
      )  
    );
  }
}