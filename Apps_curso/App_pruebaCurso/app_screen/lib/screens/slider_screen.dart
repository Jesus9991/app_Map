import 'package:flutter/material.dart';
import 'package:app_screen/theme/app_theme.dart';
import 'package:app_screen/screens/slider_screen.dart';

class SliderScreen extends StatefulWidget { //Cambiar para que el slider se mueva
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

 double slider_Value = 100; //valor del Slider
 bool checkEnabled = true;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title:  const Text("Slider"),
      ),


      body: Column(
         children: [
         Slider.adaptive( // para que se vea dirente env Ios y en Android (.adaptative)
      
        min: 50, //el usuario puede poner valores, mover botones etc
        max: 400,
        value: slider_Value,
        activeColor: AppTheme.primary, //hereda el color del app
        divisions: 10, //agrega pequeñas diviones
        onChanged: checkEnabled?(value) {
        slider_Value = value;
      setState(() {});
       
      }
      : null
      ), 
      
      Checkbox(
        value: checkEnabled,
       onChanged: (value){
         checkEnabled = value?? true;
         setState(() { //importante poner el setState
           
         }
         );
       }
       ),

           CheckboxListTile(
         activeColor: AppTheme.primary, //color del check
             title: const Text("Habilitar  Slide"),
             value: checkEnabled,
             onChanged: (value) => setState(() {
               checkEnabled = value?? true;
             }
             )
             ),
             Switch.adaptive( // mejor diseño del Check
             activeColor: AppTheme.primary,
               value: checkEnabled, 
               onChanged: (value) => setState(() {
               checkEnabled = value;
             }
             )
               
               
           ),
           SwitchListTile.adaptive(
             activeColor: AppTheme.primary,
             title: const Text("Habilitar"),
             value: checkEnabled,
             onChanged: (value)=> setState(() {
               checkEnabled = value;
             }
             )
             ),



          Expanded( //Expanded para poner limite a lo que se muestra en pantalla
            child: SingleChildScrollView(
              child: Image(
                     image: const NetworkImage("https://i.pinimg.com/originals/d0/40/91/d040918a7d9190d1a66d755014e44c7d.gif"),
                     fit: BoxFit.contain,  //cambiar tamaño de imagen mediante el Slider
               width: slider_Value,  //cambiar tamaño de imagen mediante el Slider
                     ),
            ),
          ),
          const AboutListTile(), //para mostrar licencias o cosas asi , creditos

         const SizedBox( height: 50,)
         
        ],
      
      
      )
      
    );
  }
}