import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:war_corporation_microservices/ui_ux/input_decorations.dart';

class PartnerOrdersCreatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            _ProductImage(),

            Positioned(
                top: 60,
                left: 20,
                child: IconButton(
                    onPressed: () {Get.back();},
                    icon: const Icon(Icons.arrow_back_ios_new_outlined)),    
                ),

            Positioned(
                top: 60,
                right: 20,
                child: IconButton(
                    onPressed: () {Get.back();},
                    icon: const Icon(Icons.camera))),
          ]),

          _ProductForm(),
          const SizedBox(height: 100,)
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      elevation: 0,
      onPressed: (){},
      child: const Icon(Icons.save, color: Colors.white,),
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 270,
        decoration: _buildBoxDecoration(),
        child: Form(
          child: Column(
            children: [
            const SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecorations.defaultInputDecoration(
                hintText: 'Nombre del Producto', 
                labelText: 'Nombre'),
            ),

            TextFormField(
              maxLines: 2,
              decoration: InputDecorations.defaultInputDecoration(
                hintText: 'Describe un poco tu producto', 
                labelText: 'Descripción'),
            ),

            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecorations.defaultInputDecoration(
                hintText: 'Ingresa un precio', 
                labelText: 'Precio'),
            ),

            SwitchListTile.adaptive(
                  value: true,
                  title: const Text('Disponible'),
                  activeColor: Colors.indigoAccent, 
                  onChanged: (value){}
                  )
             
            ],
          )
          ),
      ),
    );
  }
  BoxDecoration _buildBoxDecoration() {
    return  BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          offset: const Offset(0,5),
          blurRadius: 5
        )
      ],
      borderRadius:  const BorderRadius.only(
        bottomRight:  Radius.circular(25),
        bottomLeft:   Radius.circular(25))
    );
  }
}

class _ProductImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Container(
        decoration: _buildBoxDecoration(),
        width: double.infinity,
        height: 400,
        child: const ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://via.placeholder.com/400x300/green'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
          color: Colors.red,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(45), topRight: Radius.circular(45)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 5))
          ]);
}
