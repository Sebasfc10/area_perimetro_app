import 'package:flutter/material.dart';

class Perimetro extends StatelessWidget {
   Perimetro({ Key? key,
    required this.base,
    required this.altura,
    required this.figura,
   }) : super(key: key);

   final int base, altura;
   final String figura;

  @override

  Widget build(BuildContext context) {
     if(figura == 'Rectangulo') {
      late int res = (2 * base) + (2 * altura);
      return Scaffold(
      body: 
      Padding(
        padding: EdgeInsets.all(50),
        child: Center(child: Text('El Perimetro del $figura dada que es la suma de sus lados(4), dada que la Base: $base es igual a sus demas lados. Nos da como resultado esta Perimetro: ${res.toString()}', style: TextStyle(fontSize: 30, color: Colors.red),)),
      ),
    );
    } else {
   late int res = 3 * base;
    return Scaffold(
      body: 
      Padding(
        padding: EdgeInsets.all(50),
        child: Center(child: Text('El Perimetro del $figura dada que es la suma de sus lados(3), dada que la Base: $base es igual a sus demas lados. Nos da como resultado esta Perimetro: ${res.toString()}', style: TextStyle(fontSize: 30, color: Colors.red),)),
          ),
        );
      }
    }
  }