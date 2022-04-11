
import 'package:flutter/material.dart';



class Listview1screen extends StatelessWidget { //codigo para crear una LISTA

  final perfil = const ["Nosotros"];
     final nombre= const ["Ventas"];
     final apellido = const ["Compras"];
   

   const Listview1screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Acerca de ", ),
       
      ),
     body: ListView(
       
       children: [                             //leading para agregar iconos, textos y demas despues del titulo
           

           ...nombre.map((perfil) =>ListTile(trailing: const Icon(Icons.arrow_forward_ios, size: 40,),
           title: Text(perfil))
           ).toList(),
           
           const Divider(), //sirve paraa hacer separaciones 
            ...apellido.map((apellido) =>ListTile(trailing: const Icon(Icons.arrow_forward_ios,  size: 40,),
           title: Text( apellido))
           ).toList(),
           const Divider(),
           ...perfil.map((perfil) =>ListTile(trailing: const Icon(Icons.arrow_forward_ios, size: 40,),
           title: Text( perfil))
           ).toList(),
           const Divider(),

           


        // ListTile(
        //   leading: Icon(Icons.account_circle, color: Colors.deepPurple.shade800, size: 40,),
        //   title: Text("Perfil"),
        // )
          
         
       ],
     )
     
    );
 
  }
}
