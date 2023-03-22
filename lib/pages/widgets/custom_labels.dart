import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String titulo;
  final String subtitulo;

  const Labels({super.key, required this.ruta, required this.titulo, required this.subtitulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(subtitulo,
              style: GoogleFonts.robotoCondensed(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54)),
          const SizedBox(
            height: 20,
          ),
          
          GestureDetector(
            onTap: () => Get.toNamed(ruta),
            child: Text(titulo,
                style: GoogleFonts.robotoCondensed(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[600])),
          )
        ],
      ),
    );
  }
}
