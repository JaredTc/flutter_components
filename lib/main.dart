
import 'package:components/router/app_routes.dart';
import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';


void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: CardScreen(),
      initialRoute: AppRoutes.initialRoute, 
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,

      theme: AppTheme.LightTheme

    );
  }
} 