import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EstiloTextos {
  //todo: aqui indicamos que no mas si queremos 
  static TextStyle miEstilo({Color? color, FontWeight? fontWeight, double? fontSize}) {
    return GoogleFonts.robotoCondensed(
        color: color ?? Colors.white,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontSize: fontSize ?? 14);
  }
}