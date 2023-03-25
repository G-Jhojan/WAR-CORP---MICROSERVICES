import 'package:flutter/material.dart';
import 'package:war_corporation_microservices/ui_ux/fonts_styles.dart';
class ProductCard extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
       margin: const EdgeInsets.only(top: 30, bottom: 50),
        width: double.infinity,
        height: 400,
        decoration: _cardBorders(),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _BackgroundImage(),
            _ProductDetails(),
            Positioned(
              top: 0,
              right: 0,
              child: _PriceTag()),
//todo: mostrar de manera tradicional
            Positioned(
              top: 0,
              left: 0,
              child:_NotAvailable())
            
          ],
        ),
      ),
    );
  }
  BoxDecoration _cardBorders() => BoxDecoration(
    color: Colors.indigo[900],
    borderRadius: BorderRadius.circular(25),
    boxShadow: const [
      BoxShadow(
        color: Colors.black45,
        blurRadius: 10,
        offset: Offset(0,7)
      )
    ]
  );
}

class _NotAvailable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), 
          bottomRight: Radius.circular(25)
          )
      ),

      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('No disponible',
            style:EstiloTextos.miEstilo(
              color: Colors.white, 
              fontSize: 15, 
              fontWeight: FontWeight.w500
              )),
          
        ),
        
      ),
      
    );
  }
}

class _PriceTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.indigo[900],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25)
        )
      ),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '\$130',
            style:EstiloTextos.miEstilo(
                  color: Colors.white, 
                  fontSize: 25, 
                  fontWeight: FontWeight.w500
                  )
             ,),
        ),
      ),

      
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: const FadeInImage(
          placeholder: AssetImage('assets/add-image.png'), 
          image: NetworkImage('https://via.placeholder.com/400x300/f6f6f6'),
          fit: BoxFit.cover,
          ),
      ),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(right: 50),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
        width: double.infinity,
        height: 70,
        decoration: _buildBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'M.2 CORSAIR',
              style:EstiloTextos.miEstilo(
              color: Colors.white, 
              fontSize: 20, 
              fontWeight: FontWeight.bold
              )),

            Text(
              'id del disco duro',
              style:EstiloTextos.miEstilo(
              color: Colors.white, 
              fontSize: 15, 
              fontWeight: FontWeight.w500
              )),
          ],
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
      color: Colors.indigoAccent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        topRight: Radius.circular(25)
        )
  );


}
