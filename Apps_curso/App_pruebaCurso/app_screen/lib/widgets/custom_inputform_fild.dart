// import 'package:app_screen/theme/app_theme.dart';
// import 'package:flutter/material.dart';

// class CustomINputFormField extends StatelessWidget {
  

//      final String? hintText;
//      final String? labelText;
//      final String? halperText;


//   const CustomINputFormField({
//     Key? key, this.hintText, this.labelText, this.halperText,}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return TextFormField(   //agrega validaciones automaticas

//      autofocus:  true, //automaticamente aparece el teclado 

//      textCapitalization: TextCapitalization.words, //activa mayuscas y al poner nombres 
     
//      initialValue: "", //usar una demostracion ya sea nombre, numeros etc
//      onChanged: (value){
//        print("value:  $value");
//      },
//        validator: (value){ //para hacer validaciones 
           
//            if (value == null) return "requerido";
//            return value.length <5?  "minimo de cinco letras": null; //si no escribe mas de 5 letras sale el completar formulario 
//        },
//        autovalidateMode: AutovalidateMode.onUserInteraction, //para que salga un mensaje si no ha completado el formulario

//        decoration: InputDecoration( //decorar formulario,

//                 // suffixIcon: const Icon(Icons.person_add,color: Colors.teal, size: 30,), //icono al lado o texto
                  
//                   hintText: hintText, //letras que indican que escribir

//                   labelText: labelText , //Importante VEEEER

//                  labelStyle: const TextStyle(color: Colors.teal),

//                   helperText: halperText, //pequeño texto que indica que escribir 

//                   counterText: "3 caracteres", //mostrar informacion

//                 prefixIcon:  const Icon(Icons.person_add, size: 30,), // icono a la izquierda

//                       focusedBorder:const OutlineInputBorder(  //cambiar color de las lineas del formauario
//                         borderSide:BorderSide(color: Colors.teal)
//                       ) ,

//                 border: const OutlineInputBorder(//hacer un borde decorativo al formulario IMPORTANTE!!!!
                   
//                  borderRadius: BorderRadius.only(
//                    bottomLeft: Radius.circular(10),
//                       topRight: Radius.circular(10),
                 
                 
                 
//                  )
              
//                 )

//        ) 
//     );

//    }
//   }