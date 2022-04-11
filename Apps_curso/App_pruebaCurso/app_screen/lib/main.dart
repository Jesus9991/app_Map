   import 'package:flutter/material.dart';                                                      //se importa cuando pongo el nombre de la screen en home


import 'package:app_screen/router/app_router.dart';
import 'package:app_screen/theme/app_theme.dart';


void main()
{
   runApp(const MyApp());
   
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp( 
      debugShowCheckedModeBanner: false,
      title: "Material App",
     // home: const AlertScreen() ,
     initialRoute: AppRoutes.initialRoute,
     routes: AppRoutes.getAppRautes(),

     theme:AppTheme.lightTheme
   






    //onGenerateRoute: AppRoutes.onGenerateRoute,
    //initialRoute: AppRoutes.initialRoute, // escribir el nombre que quiere que sea la pantalla de inicio 
  //     routes: {                                                          //cambio de pantallas
  //       "Home"     : (BuildContext context) => const HomeScreen(),
  //       "ListView1": (BuildContext context) => const Listview1screen(),
  //       "Listview2": (BuildContext context) => const Listview2screen(),
  //       "Alert"    : (BuildContext context) => const AlertScreen(),
  //        "Card"    : (BuildContext context) => const Cardscreen() ,

  // },



  
       // onGenerateRoute: (settings){
          //return MaterialPageRoute(builder: (context) => const HomeScreen());
        //}
    
   );
  }

}