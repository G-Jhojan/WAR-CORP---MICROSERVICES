import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/pages/widgets/cadBox_BoxForm.dart';
import 'package:war_corporation_microservices/ui_ux/fonts_styles.dart';

class BoxForm extends StatelessWidget {
  final EstiloTextos estilo = EstiloTextos();
  final String titulo;

   BoxForm({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CardBox(titulo: titulo),
          const SizedBox(height: 30,),
          const Text('crear una nueva cuenta')

        ],
      )
    );
  }
}

