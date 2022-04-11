import 'package:desing_app/screens/bienvenido_screens.dart';
import 'package:desing_app/screens/blur_background.dart';
import 'package:desing_app/screens/blurs_screens.dart';
import 'package:flutter/material.dart';
import 'package:desing_app/screens/diseno_basico.dart';

void main() => runApp(MyApp());                   //escribir MateApp en el Main y borrar dexde Scalford

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(                                  //Colores primarios de la app
        primaryColor: Color.fromRGBO(34, 56, 35, 1),
        accentColor: Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: Color.fromARGB(255, 33, 33, 34),
        appBarTheme: AppBarTheme(color: Colors.amber),
      ),
      
    debugShowCheckedModeBanner: false,
      title: 'Material App',
     initialRoute:"blurs_screens",               //mostrar pantalla inicial
     routes: {
       "diseno_basico":(_) => BasicDesingScreen(),
      "scroll_screen":(_) => ScrollScreen(),
      "blurs_screens" :(_) => BlursScreen(),
      "caja_Rosada": (_) => cajaRosada()
     },                                
    );
  }
}

