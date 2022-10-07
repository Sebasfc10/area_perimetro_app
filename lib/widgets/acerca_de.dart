import 'package:flutter/material.dart';

class AcercaD extends StatelessWidget {
  const AcercaD({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acerca de"),
      ),
      body: Center(
        child: Text("Desarrollado por Daniel Reyes",
        style: TextStyle(
          fontSize: 30
           ),
          ),
        ),
    );
  }
}