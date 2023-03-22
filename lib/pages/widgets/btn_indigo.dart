import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnIndigo extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const BtnIndigo({
 
    required this.text,   required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(color: Colors.white),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Container(
          height: 40,
          width: double.infinity,
          child: Center(
            child: Text(text,
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
        ));
  }
}
