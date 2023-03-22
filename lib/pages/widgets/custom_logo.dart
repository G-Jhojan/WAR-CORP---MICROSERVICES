import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  final String titulo;
  final String imageurl;
  final double imgDimention;

  const Logo({super.key, required this.titulo, required this.imageurl, required this.imgDimention});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: imgDimention,
        child: Column(
          children: [
            Image(image: AssetImage(imageurl)),
            const SizedBox(
              height: 10,
            ),
            Text(titulo,
                style: GoogleFonts.robotoCondensed(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Text('¡BIENVENIDO!',
                style: GoogleFonts.robotoCondensed(
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black))
          ],
        ),
      ),
    );
  }
}
