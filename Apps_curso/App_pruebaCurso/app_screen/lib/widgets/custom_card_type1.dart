
import '../theme/app_theme.dart';
import 'package:flutter/material.dart';





class Custom_Card extends StatelessWidget {
  const Custom_Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
             const ListTile(
               leading: Icon(Icons.turned_in_not_rounded, color: AppTheme.primary, ),
               title: Text("titulo"),
               subtitle:  Text("asasdsdsacvuhfbhvuffhuvuvhfhvuvb"), //agregar sub
             ),
             Padding(
               padding: const EdgeInsets.all(8.0), //espacio y separacion entre botones
               child: Row(
                 mainAxisAlignment:  MainAxisAlignment.spaceAround,
                 children: [
                   TextButton(onPressed: (){}, child: const Text("Ok"))
                 ],
               ),
             ),
              TextButton(onPressed: (){}, child: const Text("Cancelar"))

        ],
      ),
    );
  }
}