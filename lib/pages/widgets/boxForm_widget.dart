import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxForm extends StatelessWidget {
  
  TextStyle miEstilo({Color? color, FontWeight? fontWeight, double? fontSize}) {
    return GoogleFonts.robotoCondensed(
      color: color ?? Colors.white,  // valor predeterminado: blanco
      fontWeight: fontWeight ?? FontWeight.bold,  // valor predeterminado: negrita
      fontSize: fontSize ?? 14
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: _createCardShape(),
        child: Column(
          children:  [
            const SizedBox(height: 10,),
            Text(
            'REGISTRA TU PRODUCTO',
            style: miEstilo(
              color: Colors.black,
              fontSize: 18,
              fontWeight:FontWeight.bold 
              ), 
            ),
            const SizedBox(height: 20,),
            Text(
            'FORMULARIO',
            style: miEstilo(
              color: Colors.black,
              fontSize: 18,
              fontWeight:FontWeight.bold 
              ), 
            ),
          ],
        ),
      ),
    );
  }
 //todo: es solo el diseño del box form 
  BoxDecoration _createCardShape() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(25),
    boxShadow:const[
      BoxShadow(
        color:Colors.black12,
        blurRadius: 15,
        offset: Offset(0, 5) 
        )
    ] 
  );
}