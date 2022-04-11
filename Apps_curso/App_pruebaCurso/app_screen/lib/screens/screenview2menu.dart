
import 'package:flutter/material.dart';



class Listview2screen extends StatelessWidget { //codigo para crear una LISTA

  final perfil = const ["numero telefonico"];
     final nombre= const ["Nombre"];
     final apellido = const ["Apellido"];
   

   const Listview2screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      
      appBar: AppBar(
        title: const Text("Registro", ),
       
         
      ),
     body: ListView(
       
       children: [                             //leading para agregar iconos, textos y demas despues del titulo
                                                    
                                                    //   on Tap paa hacer contacto con algo 

           ...nombre.map((perfil) =>ListTile(trailing: const Icon(Icons.arrow_forward_ios, size: 40, ), onTap: (){
          
             
           },
           title: Text(perfil),)
           ).toList(),
           
           const Divider(), //sirve paraa hacer separaciones 
            ...apellido.map((apellido) =>ListTile(trailing: const Icon(Icons.arrow_forward_ios, size: 40,), onTap: (){

           },
           title: Text( apellido), )
           ).toList(),

           const Divider(),

           ...perfil.map((perfil) =>ListTile(trailing: const Icon(Icons.arrow_forward_ios, size: 40,), onTap: (){

           },
           title: Text( perfil), )
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
