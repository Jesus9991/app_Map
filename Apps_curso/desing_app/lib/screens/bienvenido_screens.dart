import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyanAccent,
      
     body: PageView(scrollDirection: Axis.vertical, //crear un scroll 
       children: [
         page1(),
         page2Screen()
         
       ],
     ),

    );
  }
}

class page1 extends StatelessWidget {
  const page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Container(
         
          height: double.infinity,
          alignment: Alignment.topCenter,
          //color: Color(),
          child: Image(image: NetworkImage("https://i0.wp.com/wallpapersfortech.com/wp-content/uploads/2021/06/Turquoise-and-Orange-Minimalist-Phone-Wallpaper-scaled.jpg?fit=1181%2C2560&ssl=1"),
          ),
          
        ),
       SafeArea(
         child: Column(
           
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(height: 50,),
             Text("25°",style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold),),
             Text("Miercoles",style: TextStyle(color: Colors.white,fontSize: 70,fontWeight: FontWeight.bold)),
             Expanded(child: Container()),
             Icon(Icons.keyboard_arrow_down_sharp,size: 180,color: Colors.white70,),
       
           ],
         ),
       )
      ],
      
    );
  }
}


class page2Screen extends StatelessWidget {
   
  const page2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      

     child: Center(
         child: TextButton(onPressed: (){},  
         child: Container( padding: EdgeInsets.symmetric(horizontal: 10),
           child: Text("Bienvenido", style: TextStyle(color: Colors.white70, fontSize: 50,fontWeight: FontWeight.w800),)),style: TextButton.styleFrom(backgroundColor: Colors.orange,
         shape: StadiumBorder(),
         ),)
      ),
    );
  }
}