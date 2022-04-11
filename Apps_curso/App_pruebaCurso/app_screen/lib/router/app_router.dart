
import 'package:app_screen/models/models.dart';
import 'package:app_screen/screens/screens.dart';
import 'package:app_screen/screens/screenview2menu.dart';
import 'package:app_screen/screens/slider_screen.dart';
import 'package:flutter/material.dart';


class AppRoutes{ //para elegir que pantalla es de inicio
  static const initialRoute = "Home";
  static final menuOptions = <MenuOption> [

     //elegir el nombre y el icono que quiere aparezca
    //MenuOption(route: "Home", name: "Home", screen: const HomeScreen(), icon: Icons.home_filled ) ,
    MenuOption(route: "acerca de", name: "Acerca de ", screen: const Listview1screen(), icon: Icons.list_alt_rounded),
    MenuOption(route: "registro ", name: "Registro", screen: const Listview2screen(), icon: Icons.list_alt_rounded),
    MenuOption(route: "alerta", name: "Alerta", screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: "tarjeta", name: "Tarjeta", screen: const Cardscreen(), icon: Icons.card_membership_outlined),
    MenuOption(route: "avatar", name: "Avatar", screen: const AvatarScreen(), icon: Icons.supervised_user_circle),
    MenuOption(route: "animated", name: "Animated container", screen: const AnimatedScreen(), icon: Icons.play_circle_fill_sharp),
    MenuOption(route: "inputs", name: "Form Input", screen: const InputsScreen(), icon: Icons.input),
    MenuOption(route: "Sliders", name: "Slider and Checks", screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOption(route: "ListView", name: "InfiniteScroll", screen: const ListViewBuilderScreen(), icon: Icons.calendar_view_day_outlined),


  ];
  static Map<String, Widget Function(BuildContext) > getAppRautes(){

    Map<String, Widget Function(BuildContext) > appRoutes = {};

   appRoutes.addAll({"Home": (BuildContext context ) => const HomeScreen()});

    for(final option in menuOptions){
     appRoutes.addAll({ option.route: (BuildContext context) =>option.screen,});
    }
    return appRoutes;

  }
}