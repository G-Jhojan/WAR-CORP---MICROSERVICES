import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/pages/widgets/btn_indigo.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_input.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_labels.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_logo.dart';
import 'package:war_corporation_microservices/pages/widgets/custom_terminos.dart';

class LoginPage extends StatelessWidget {
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
                    titulo: 'W.A.R CORP.®', 
                    imageurl: 'assets/logo_i.png',
                    imgDimention: 200,
                    ), 
                  _FormState(), 
                  Labels(
                    ruta: 'register',
                    titulo: 'Crea una Cuenta',
                    subtitulo: '¿No tienes cuenta?',
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
  @override
  Widget build(BuildContext context) {
    return Container(
      //todo: clase 52
      margin: EdgeInsets.only(top: 40),
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
            icon: Icons.lock_outlined,
            placeholder: 'Contraseña',
            isPassword: true,
            textController: passwordController,
          ),
          BtnIndigo(
            text: 'INGRESAR',
            onPressed: () {
              print(emailController.text);
            },
          )
        ],
      ),
    );
  }
}
