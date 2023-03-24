import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/ui_ux/fonts_styles.dart';

class InputDecorations {
  static InputDecoration defaultInputDecoration({
      required String hintText,
      required String labelText,
      IconData? prefixIcon
  }) 
  
  {  
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple)),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple, width: 2)),
      hintText: hintText,
      labelText: labelText,
      labelStyle: EstiloTextos.miEstilo(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),
      prefixIcon:prefixIcon != null  
        ?  Icon(prefixIcon, color: Colors.deepPurple,)
        : null
    );
  }
}
