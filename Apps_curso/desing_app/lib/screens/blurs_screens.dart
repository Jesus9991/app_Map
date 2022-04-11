import 'package:desing_app/screens/blur_background.dart';


import 'package:flutter/material.dart';



class BlursScreen extends StatelessWidget {
   
  const BlursScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   
    return Stack (   //Todo ayuda a poner elementos unos encima de otros 
       
      children: [
                 
          Container(
            
         
        decoration: BoxDecoration(   // todo  (desde ahi se crea el Gradiente 
          gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
            colors: [
              Color(0xff2E305F),
              Color.fromARGB(255, 59, 2, 70),
             
            ]
            ),
            
        ),
       
      ),
        
       Positioned(     //Todo Widges envuelto para poder mover el widge
         top:-100, 
         left: -50,       
         child: cajaRosada()
         ),
          
       
     
    ],  
    );
  
   
  }
  
}

