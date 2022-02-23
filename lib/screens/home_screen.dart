import 'package:components/router/app_routes.dart';
import 'package:components/screens/screens.dart';
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.MenuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Componentes en Flutter')),
       
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
         leading:  Icon( menuOptions[index].icon, color: AppTheme.primary,),
          title: Text(menuOptions[index].name),
          onTap: () {

            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen()
            //   );
            
            Navigator.pushNamed(context,menuOptions[index].route);
          },
        ), 
        separatorBuilder: (__, ___) => const Divider(),
         itemCount: menuOptions.length)
    );
  }
}