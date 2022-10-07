import 'package:flutter/material.dart';

class Area extends StatelessWidget {
   Area({ Key? key,
    required this.base,
    required this.altura,
    required this.figura,
   }) : super(key: key);

   final int base, altura;
   final String figura;

   late int res = (base * altura);
   late double res2 = res/2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Center(child: Text('El Area del $figura para una Altura: $altura y una Base: $base, da como resultado esta Area: ${res2.toString()}', style: TextStyle(fontSize: 30),)),
      ),
    );
  }
}