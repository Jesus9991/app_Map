import 'package:app_screen/widgets/custom_card_type1.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_type2.dart';

class Cardscreen extends StatelessWidget {
   
  const Cardscreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Cads"),
      ),
      body: ListView( //hacer tarjeta
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10), // hacer separaciones a los lados y hacia arriba USAR
        children:const [
          Custom_Card(),
          SizedBox(height: 10 ,),
          CustonType2(),
           SizedBox(height: 10 ,),
          CustonType2(),
           SizedBox(height: 10 ,),
          CustonType2(),
           SizedBox(height: 10 ,),
          CustonType2(),
           SizedBox(height: 10 ,),
          CustonType2(),
           SizedBox(height: 10 ,),
          CustonType2(),
        ],
      )
    );
  }
}

