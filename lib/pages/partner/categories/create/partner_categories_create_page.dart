
import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/pages/widgets/background_page.dart';
import 'package:war_corporation_microservices/ui_ux/fonts_styles.dart';
import 'package:war_corporation_microservices/ui_ux/input_decorations.dart';

class PartnerCategoriesCreatePage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [
           const BackgroundPage(imagePath: 'assets/categorias.png'),// ahora si estamos abajo del boxForm
           SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 250,),
                _BoxForm(titulo: 'CREA UNA CATEGORIA'),

              ],
            )
          ),// para que pueda moverse por si solo
        ],
      )
    );
  }
}

class _BoxForm extends StatelessWidget {
  final EstiloTextos estilo = EstiloTextos();
  final String titulo;

   _BoxForm({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _CardBox(titulo: titulo),
          const SizedBox(height: 30,),
          const Text('crear una nueva cuenta')

        ],
      )
    );
  }
}


class _CardBox extends StatelessWidget {
  //en los campos de edicion de texto
  final EstiloTextos estilo = EstiloTextos();

  final String? titulo;

  _CardBox({super.key, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: _createCardShape(),
      child: Form(
        child: Column(
          children: [
          const SizedBox(height: 10,),
            Text(
              '$titulo',
              style: EstiloTextos.miEstilo(
                  color: Colors.black, 
                  fontSize: 18, 
                  fontWeight: FontWeight.bold),
            ),
           const SizedBox(height: 20,),

           const _ProductsForm(),
            
           const SizedBox(height: 20,),

            MaterialButton(
              onPressed: (){},
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              color: Colors.indigo,
              child: Container(
                padding:EdgeInsets.symmetric(horizontal: 60, vertical: 12) ,
                child: Text(
                  'CREAR CATEGORÍA', 
                  style: EstiloTextos.miEstilo(
                    color: Colors.white,
                    fontSize: 15, 
                    fontWeight: FontWeight.w600),),
              ),
            )
          ],
        ),
      ),
    );
  }
//todo: es solo el diseño del box form
  BoxDecoration _createCardShape() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
          ]);
}

class _ProductsForm extends StatelessWidget {
  //aqui sera un box de solo los textfields
  const _ProductsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(//aqui estrechamos 
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
        TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecorations.defaultInputDecoration(
            hintText: 'Nombre', 
            labelText: 'Nombre de la Categoría', 
            prefixIcon: Icons.shopping_bag
            ),
        ),
      
          TextFormField(
          maxLines: 3,
          autocorrect: false,
          keyboardType: TextInputType.text,
          decoration: InputDecorations.defaultInputDecoration(
            hintText: 'Describe tu producto', 
            labelText: 'Descripción', 
            prefixIcon: Icons.text_snippet_rounded
            ),
        ),
          ],
        ),
      ),
    );
  }
}
