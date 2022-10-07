import 'package:daniel/widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'figurasGeometricas',
      routes: {
        'figurasGeometricas': (_) => FigurasGeometricas(),
        'acercaD': (_) => AcercaD(),
        'triangulo': (_) => Triangulo(),
        'rectangulo': (_) => Rectangulo(),
      },
      title: 'App Figuras Geometricas',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.indigo,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => Colors.indigo))),
      ),
    );
  }
}
