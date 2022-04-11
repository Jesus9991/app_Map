import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const FadeInImage(
            placeholder: NetworkImage("https://c.tenor.com/aK9YaZum7RkAAAAC/excited-loading.gif"),
           image: NetworkImage("https://steamuserimages-a.akamaihd.net/ugc/1754683971593188914/0B0A09B563EFD6A957B1BED922A4E5321840D59B/?imw=637&imh=358&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=truef"),
            
           ),
           Container(
             margin: EdgeInsets.symmetric(horizontal: 10),
             child: Row(
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   
                   children: const [
                     Padding(padding: EdgeInsets.all(10)
                     ),
                     Text("Landscape minimal mount", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        Text("Autor: Candy Man ", style: TextStyle(color: Colors.white70,fontSize: 15,fontStyle: FontStyle.italic),),  
                 
                   ],
                   
                 ),
                 Expanded(child: Container(
                   //color: Colors.red, height: 10,

                 ),
                 ),
                
                 Icon(Icons.star, color: Colors.amber,size: 30,),
                 Text("41",style: TextStyle(color: Colors.white, fontSize: 15),),

               ],
             ),
             
            
           ),
           Container(margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30), //separar o centrar objetos
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Column(
                   children: [ 
                           
                     Icon(Icons.call, color: Colors.white,size: 40,),
                     Text("call", style: TextStyle(color: Colors.white70),
                     
                     )
                   ],
                 ),
                  Column(
                   children: [
                     Icon(Icons.location_on_rounded, color: Colors.white,size: 40,),
                     Text("route", style: TextStyle(color: Colors.white70),
                     )
                   ],
                 ),
                  Column(
                   children: [
                     Icon(Icons.share, color: Colors.white,size: 40,),
                     Text("share", style: TextStyle(color: Colors.white70),
                     )
                   ],
                 ),
                 
               ],
               
             ),
           ),
                 Center(
             child: Container(
               margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: const Text("Do est ipsum dolore consectetur elit fugiat occaecat nisi sunt duis aliqua eu mollit labore. Pariatur exercitation sint sunt adipisicing esse. Lorem excepteur enim qui proident non aliqua irure sit excepteur ipsum est nostrud ullamco est. Magna irure exercitation pariatur non enim magna commodo pariatur tempor adipisicing laboris anim occaecat.",style: TextStyle(color: Colors.white70,fontSize: 25),
               ),
             ),
             
           )
           
          
          //  Row(
          //    children: [
          //      Padding(padding: 
          //      EdgeInsets.symmetric(horizontal:50, vertical: 90,)
          //      ),
               
          //       Icon(Icons.call, size: 40,color: Colors.white, ),
          //       Text("data",style: TextStyle(color: Colors.amber),
          //       ),
          //       Expanded(child: Center()
          //       ),
          //           Icon(Icons.room_outlined, size: 40,color: Colors.white,),
          //            Expanded(child: Center()
          //            ),
          //            Icon(Icons.share, size: 40,color: Colors.white,),
          //             Expanded(child: Center()),

               
          //    ],
          //  )
           
        ],
        
      ),
    );
  }
}