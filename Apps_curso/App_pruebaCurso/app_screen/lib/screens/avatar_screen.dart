import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
        actions: [ //para poner icono al lado de la barra
          Container(
            margin: const EdgeInsets.only(right: 10), //separacion de borrdes
            child:const CircleAvatar(
              child:CircleAvatar( //poner foto de perfil
                backgroundImage:  NetworkImage("https://images.unsplash.com/photo-1600180758890-6b94519a8ba6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
              ),
              backgroundColor: Colors.teal,
            ),
          )
        ],
      ),
      body: const Center(
         child: Text('AvatarScreen'),
      ),
    );
  }
}