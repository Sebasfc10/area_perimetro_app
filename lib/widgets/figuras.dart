import 'package:flutter/material.dart';

class FigurasGeometricas extends StatefulWidget {
  const FigurasGeometricas({ Key? key }) : super(key: key);

  @override
  State<FigurasGeometricas> createState() => _FigurasGeometricasState();
}


class _FigurasGeometricasState extends State<FigurasGeometricas> {

  String _groupValue = '';

  void checkRadio(String value){
    setState(() {
      _groupValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Figuras Geometricas"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, 'acercaD'),
            icon: new Icon(Icons.more_vert)
            )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 40, left: 40, top: 240),
        child: Center(
          child: Column(
            children: [
              Center(
                child: ListTile(
                  title: Text('Triangulo', style: TextStyle(fontSize: 32),),
                  leading: Radio(
                    value: 'opcion 1',
                    groupValue: _groupValue,
                    onChanged: (value) {
                      checkRadio(value as String);
                    },
                  ),
                ),
              ),
              Center(
                child: ListTile(
                  title: Text('Rectangulo', style: TextStyle(fontSize: 32),),
                  leading: Radio(
                    value: 'opcion 2',
                    groupValue: _groupValue,
                    onChanged: (value) {
                      checkRadio(value as String);
                    },
                  ),
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    if(_groupValue == 'opcion 1'){
                      print("data1");
                       Navigator.pushNamed(context, 'triangulo');
                    } else if (_groupValue == 'opcion 2') {
                      Navigator.pushNamed(context, 'rectangulo');
                    }
                  },
                  child: Text("Aceptar", style: TextStyle(fontSize: 24),),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}