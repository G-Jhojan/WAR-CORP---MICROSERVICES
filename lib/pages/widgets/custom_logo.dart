import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:war_corporation_microservices/ui_ux/fonts_styles.dart';

class Logo extends StatelessWidget {
  final String titulo;
  final String imageurl;
  final double imgDimention;
  final String agradecimiento;

  const Logo(
      {super.key,
      required this.titulo,
      required this.imageurl,
      required this.imgDimention, 
      required this.agradecimiento});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            width: imgDimention,
            child: Column(
              children: [
                Image(image: AssetImage(imageurl)),
                const SizedBox(
                  height: 10,
                ),
                Text(titulo,
                    style:EstiloTextos.miEstilo(
                      color: Colors.black, 
                      fontSize: 25) ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),

          Text(
            agradecimiento,
              style: EstiloTextos.miEstilo(
                      color: Colors.black, 
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                      ))
        ],
      ),
    );
  }
}
