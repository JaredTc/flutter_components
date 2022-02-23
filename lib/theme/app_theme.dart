



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme{

  static  const Color primary = Colors.indigo;

  static final ThemeData LightTheme = ThemeData.light().copyWith(
    
        primaryColor:primary,
        appBarTheme: const AppBarTheme(
          color: primary
        ),
        
        textButtonTheme: TextButtonThemeData(
          style:  TextButton.styleFrom( primary: primary)
        ),

          floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 0

        
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
             primary: Colors.indigo,
             shape: const StadiumBorder(),
             elevation: 0,
           )
      )

      );
      


  static final ThemeData DarkTheme = ThemeData.dark().copyWith(

        primaryColor: Colors.limeAccent,
        appBarTheme: const AppBarTheme(
          color: primary
        ),

        

      );


    

}