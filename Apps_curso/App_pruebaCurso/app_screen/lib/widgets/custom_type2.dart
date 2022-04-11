import 'package:app_screen/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustonType2  extends StatelessWidget {
  const CustonType2 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30)
      ),
      elevation: 10,
    
      child: Column(
        children: [                    //objeto de carga 
         const FadeInImage(placeholder: NetworkImage("https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif"), 
         image:NetworkImage("https://img.freepik.com/vector-gratis/escena-naturaleza-rio-colinas-bosque-montana-ilustracion-estilo-dibujos-animados-planos-paisaje_1150-37326.jpg" ),
          width: double.infinity,
          height: 230,
          fit: BoxFit.cover, //para que la imagen no tenga esos bordes blancos 
          fadeInDuration: Duration(milliseconds: 200),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, top:  10 , bottom: 10),
            child:  const Text("Hola señores"),
          )
        ],
      ),
    );
  }
}