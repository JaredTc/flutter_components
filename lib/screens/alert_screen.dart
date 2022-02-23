

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

    void displayDialogIOS (BuildContext context){
      showCupertinoDialog(
        barrierDismissible: false,
        context: context, 
        builder: ( context ){
          return CupertinoAlertDialog(
            
            title: Text('Titulo'),
              content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              
              Text('Contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,),            
            ],
            
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context),
            child: Text('Cancelar', style: TextStyle(color:  Colors.red),)
            ),
            TextButton(onPressed: () => Navigator.pop(context),
            child: Text('Aceptar'))
          ],
          
          );
          
        }
        );
    }

  void displayDialog (BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context ){
        return AlertDialog(
          elevation: 5,
          title: Text('Titulo'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context),
             child: Text('Cancelar'))
          ],

        );
      }
      );

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(
          
        child:  const Text('Mostrar Alerta'),
          onPressed: () => displayDialogIOS (context), 

        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);




        }
        ),
    );
  }
}