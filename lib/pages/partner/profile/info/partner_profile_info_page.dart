import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:war_corporation_microservices/pages/partner/profile/info/partner_profile_info_controller.dart';
import 'package:war_corporation_microservices/pages/widgets/btn_indigo.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_input.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_labels.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_logo.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_terminos.dart';

class PartnerProfileInfoPage extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff2f2f2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height*0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(
                    agradecimiento: '¡UN GUSTO VERTE DE NUEVO!',
                    titulo: 'PERFIL', 
                    imageurl: 'assets/perfil.png',
                    imgDimention: 100,
                    ), 

                  _FormState(), 

                  const Labels(
                    ruta: 'login',
                    titulo: 'Inicia Sesión',
                    subtitulo: '¿Tienes Otra Cuenta?'
                    ), 

                  Terminos()
                ],
              ),
            ),
          ),
        ));
  }
}

class _FormState extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController= TextEditingController();
  final lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      //todo: clase 52
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.email_outlined,
            placeholder: 'Correo Electrónico',
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),

          CustomInput(
            icon: Icons.person,
            placeholder: 'Nombre',
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),

          CustomInput(
            icon: Icons.people_alt_outlined,
            placeholder: 'Apellido',
            keyboardType: TextInputType.emailAddress,
            textController: emailController,
          ),

          CustomInput(
            icon: Icons.lock_outlined,
            placeholder: 'Contraseña',
            isPassword: true,
            textController: passwordController,
          ),

          BtnIndigo(
            text: 'CERRAR SESIÓN',
            onPressed: () {
              print(emailController.text);
            },
          )
        ],
      ),
    );
  }
}
