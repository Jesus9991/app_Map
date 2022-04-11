import 'dart:math';

import 'package:flutter/material.dart';




//todo creacion de caja rosada 
    class cajaRosada extends StatelessWidget {
     
      @override
      Widget build(BuildContext context) {
        
        return  
             Stack(
               
             children:[
              Transform.rotate( //todo   //rotacion 
                    angle: -pi/7,            //rotacion 
                    child: Container(
                      
                              width: 500,
                              height: 500,
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                gradient: LinearGradient(
                                colors:[
                              Color.fromARGB(255, 255, 156, 189),
                            Colors.pink.shade800,
                                 
                                ]
                                ),

                              ),
                                      
                            ),
                            
                  ),
                
             ], 
               
             );
      
      }
    } 
   
    
   