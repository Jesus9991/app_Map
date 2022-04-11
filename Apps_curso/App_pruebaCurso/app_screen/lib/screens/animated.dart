import 'package:flutter/material.dart';
import 'dart:math' show Random;
class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);
  

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
 
}

class _AnimatedScreenState extends State<AnimatedScreen> {

    double _width = 50;
     double _height = 50;
     Color _color = Colors.teal;
     BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

     void changeShape(){
       //cambiar tamaño mediante un boton 
          
          final random  =Random();
        _width =random.nextInt(300).toDouble()+ 70;
       _height = random.nextInt(300).toDouble()+ 70;
       _color = Color.fromARGB(random.nextInt(255),
      random.nextInt(255),
       random.nextInt(255),
      1);
        _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble( )+ 10);


        setState(() { //para indicarle a Flutter que tiene que hacer esos cambios indicados 
          
        });


     }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        title:const Text("Animated"),
      ),
      body: Center(
         child:AnimatedContainer(
           duration: const Duration( //duracion de las animaciones 
             milliseconds: 500),//duracion de la anim 
             curve:Curves.easeInCubic, //efecto de la animacion EJ: ese es de rebote, transicion suave
           width: _width,
           height:_height,
           decoration: BoxDecoration(
               color: _color,
               borderRadius: _borderRadius
           ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
       backgroundColor:Colors.teal,
        child: const Icon(Icons.play_circle_fill, size: 40,),
        
        onPressed: changeShape,



      ),
    );
  }
}