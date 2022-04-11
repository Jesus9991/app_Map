import 'package:app_screen/router/app_router.dart';
import 'package:app_screen/screens/screenview2menu.dart';
import 'package:app_screen/theme/app_theme.dart';
import 'package:flutter/material.dart';

//import 'package:app_screen/screens/screens.dart';
class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      appBar: AppBar(
       
        title: const Text("APP"),
      ),
      body: ListView.separated( //para que las listas tengan una separacion
       
        itemBuilder:  (context, i) => ListTile(
         
          leading: Icon(menuOptions[i].icon,color: AppTheme.primary,), //icono que acompañara a la lista
          
          title:  Text(menuOptions[i].name , ), //el nombre que veremos en la lista
        
          onTap: (){ //para que sea tapeable

               final route = MaterialPageRoute(builder: (context) => const Listview2screen()); //nombre de la pantalla donde se quiere ir

            Navigator.pushNamed(context, menuOptions[i].route,);
            //navegar a otra pantalla

            //push replecement sirve para que se elimine la pantalla anterior
             //pushNamed para llamar directamente a la pantalla que queremos pushNamed(contex, "Card") en la main
          },
        ),
        separatorBuilder: (_, __) => const Divider() , //para que haya una division 
         
         itemCount:AppRoutes.menuOptions.length,) //numero de listas

            

    );
  }
}