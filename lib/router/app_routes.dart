import 'package:components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:components/screens/screens.dart';



class AppRoutes{

  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    // MenuOption(route: 'home', 
    // icon: Icons.home_filled,
    // name: 'Home Screen', 
    // screen: const HomeScreen()),
    MenuOption(route: 'Listview1', 
    icon: Icons.line_style_rounded,
    name: 'List View 1', 
    screen: const Listview1Screen()),
    MenuOption(route: 'Listview2', 
    icon: Icons.list_alt_rounded,
    name: 'List view 2', 
    screen: const Listview2Screen()),
    MenuOption(route: 'alert', 
    icon: Icons.add_alert_outlined,
    name: 'Alertas', 
    screen: const AlertScreen()),
    MenuOption(route: 'card', 
    icon: Icons.credit_card,
    name: 'Tarjetas', 
    screen: const CardScreen()),
    MenuOption(route: 'avatar', 
    icon: Icons.supervised_user_circle,
    name: 'Circle Avatar', 
    screen: const AvatarScreen()),
    MenuOption(route: 'Animated', 
    icon: Icons.play_circle_outline,
    name: 'Animated Screen', 
    screen: const AnimatedScreen()),
    MenuOption(route: 'Inputs', 
    icon: Icons.input_rounded,
    name: 'Text Inputs', 
    screen: const InputScreen()),
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
 appRoutes.addAll({'home' : ( BuildContext  context ) => const HomeScreen() });
    for (final option in MenuOptions ) {
      appRoutes.addAll({option.route : ( BuildContext  context ) =>  option.screen });
    }
    return appRoutes;

  }
  // static Map<String, Widget Function(BuildContext)> routes = {


  //     'home': ( BuildContext context ) => const HomeScreen(),
  //       'Listview1': ( BuildContext context ) => const Listview1Screen(),
  //       'Listview2': ( BuildContext context ) => const Listview2Screen(),
  //       'alert': ( BuildContext context ) => const AlertScreen(),
  //       'card': ( BuildContext context ) => const CardScreen(),


  // };

  static Route<dynamic> onGenerateRoute ( RouteSettings settings ) {
         return MaterialPageRoute(
              builder: (context) => const AlertScreen()
         );

}
}