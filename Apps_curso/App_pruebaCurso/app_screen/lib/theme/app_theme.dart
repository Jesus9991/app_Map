


import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.teal;
  static const Color segund = Color.fromARGB(255, 61, 58, 58);
  static final ThemeData lightTheme = ThemeData.light().copyWith( //color de la app, para aplicar a toda 

       primaryColor: Colors.teal.shade700,

     appBarTheme:const  AppBarTheme(
     color:primary, 
           elevation: 0
     )
    );
    static final ThemeData darkTheme = ThemeData.dark().copyWith( //color de la app, para aplicar a toda 

       primaryColor: Colors.teal.shade700,

     appBarTheme:const  AppBarTheme(
       color:primary, 
           elevation: 0
     ),
     scaffoldBackgroundColor: Colors.black,


  //    inputDecorationTheme: const InputDecorationTheme(
  //   floatingLabelStyle: TextStyle(color: primary),
  //   focusedBorder: OutlineInputBorder(
  //     borderRadius: BorderRadius.only(bottomLeft:Radius.circular(10),topRight: Radius.circular(10))
  //   )
  // )

);
    

   
    
}
