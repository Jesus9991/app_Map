import 'dart:ffi';

import 'package:app_screen/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {

   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagenesID = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController =  ScrollController();
     
    bool Isloading = false; //para hacer que se muestre un CARGANDO

 @override
 void initState() {
   super.initState();
   
   scrollController.addListener(() {
     //print("${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}");
     if( (scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ){
          // add5();
          FetchDAta();
     }
   }
   );
 }

  Future FetchDAta() async { //para hacer cierto tipo de espera 

   if(Isloading) return;
   Isloading = true;
   setState(() {});

    await Future.delayed(const Duration(seconds: 3)); //para la duracion de carga
    add5();
    Isloading = false;
    setState(() {});
    if(scrollController.position.pixels+ 100 <= scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(
        scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 522), //duracion de la anim
      curve: Curves.easeInOutBack
      ); //animacion del Loading
  }

 void add5(){
 final lastID = imagenesID.last; //agarra el ultimo valor
 imagenesID.addAll(
   [1,2,3,4,5].map((e) => lastID+ e)

 );
 setState(() {});
 }
 Future<void> onRefresh()async{

  await Future.delayed(const Duration(seconds: 2) );
  final lastId = imagenesID.last;
  imagenesID.clear();
  imagenesID.add(lastId+ 1);
  add5();

 
  }
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; //para saber el ancho y el alto de la pantalla del celular 

    return  Scaffold(
      body: MediaQuery.removePadding(
        context:context,
        removeTop: true,
        removeBottom: true,
        child: Stack(  //widteg sirve para poner algo encima de otro widge
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
               //refrescar la pag o la app o widget
            onRefresh: onRefresh ,
              child: ListView.builder(  //listViewB
                controller: scrollController,
                
                itemCount: imagenesID.length, //para que se cargen 10 img y mediante va scrolliando
            
            
                itemBuilder: (BuildContext context, int index) {
                  return  const FadeInImage(
                    width: double.infinity, //para que la img agerre toda la pantall
                    height: 450,
                    fit: BoxFit.cover,
              
                    placeholder:NetworkImage("https://w7.pngwing.com/pngs/599/45/png-transparent-computer-icons-loading-chart-hand-circle-stock-photography.png"), 
                    
                    image:NetworkImage("https://picsum.photos/seed/picsum/200/300")
                    );
                  
                },
              ),
            ),
            if(Isloading) //mostrar icono cargando
            Positioned(
              bottom: 10,
              left: size.width *0.5 - 30, //centrar el loading(carga)
              
              child: const
             LoadingIcon())//extraje un container


        ] 
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( //extraer Widge
    padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration:  BoxDecoration(
        color: Colors.white.withOpacity(0.7), 

        shape: BoxShape.circle,
        ),

      child: const CircularProgressIndicator(color: AppTheme.primary,), //indicado de carga
    );
  }
}