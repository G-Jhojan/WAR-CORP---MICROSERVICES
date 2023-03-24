import 'package:flutter/material.dart';

class BackgroundPage extends StatelessWidget {
  final String imagePath;

  const BackgroundPage({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [
        _BackgroundPurple(), //el cuadro del fondo
         Icon(imagePath: imagePath),
      ]),
    );
  }
}

class Icon extends StatelessWidget {
  final String imagePath;

  const Icon({super.key, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity, //todo el ancho
        margin: const EdgeInsets.only(top: 30),
        height: 100,
        //color: Colors.red,
        child:  Image(image: AssetImage(imagePath)),
      ),
    );
  }
}

class _BackgroundPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: boxDecoration(),
      child: Stack(children: [
        Positioned(
          child: _Burbujas(),
          top: 90,
          left: 30,
        ),
        Positioned(
          child: _Burbujas(),
          top: 36,
          left: 2,
        ),
        Positioned(
          child: _Burbujas(),
          top: 90,
          left: 56,
        ),
        Positioned(
          child: _Burbujas(),
          bottom: 90,
          left: 30,
        ),
      ]),
    );
  }

  BoxDecoration boxDecoration() => const BoxDecoration(color: Colors.indigo);
}

class _Burbujas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05),
      ),
    );
  }
}
