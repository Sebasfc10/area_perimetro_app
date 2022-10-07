import 'package:daniel/widgets/area.dart';
import 'package:daniel/widgets/perimetro.dart';
import 'package:flutter/material.dart';

class Triangulo extends StatefulWidget {
  const Triangulo({ Key? key }) : super(key: key);

  @override
  State<Triangulo> createState() => _TrianguloState();
}

class _TrianguloState extends State<Triangulo> {

  final base = TextEditingController();
  final altura = TextEditingController();

  int b = 0;
  int a = 0; 
  String figura = "Triangulo";

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
        centerTitle: true,
        title: Text("Triangulo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right:40, left: 40, top: 180),
          child: Center(
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: base,
                  decoration: InputDecoration(
                    //
                    filled: true,
                    fillColor: Colors.indigo.shade50,
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 2.0)
                    ),
                    labelText: "Digite Base",
                    //
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
      
                TextField(
                  keyboardType: TextInputType.number,
                  controller: altura,
                  decoration: InputDecoration(
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo, width: 2.0)
                    ),
                     filled: true,
                    fillColor: Colors.indigo.shade50,
                    labelText: "Digite Altura",
                  ),
                ),
                SizedBox(height: 20),
      
                Center(
                  child: ListTile(
                    title: Text('Area',style: TextStyle(fontSize: 22)),
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
                    title: Text('Perimetro', style: TextStyle(fontSize: 22),),
                    leading: Radio(
                      value: 'opcion 2',
                      groupValue: _groupValue,
                      onChanged: (value) {
                        checkRadio(value as String);
                      },
                    ),
                  ),
                ),
      
                SizedBox(height: 40),
      
                ElevatedButton(
                  onPressed: (){
                    b = int.parse(base.text);
                    a = int.parse(altura.text);
      
                    print(b+a);
                    if(_groupValue == 'opcion 1' ){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Area(base: b, altura: a, figura: figura,)));
                    } else {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Perimetro(base: b, altura: a, figura: figura,)));
                    }
                  },
                  child: Text('Calcular', style: TextStyle(fontSize: 18)),
                  ),
              ],
            )
          ),
        ),
      ),
    );
  }
}