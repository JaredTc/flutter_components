import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  
  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  String inputValue = "";

  void onSubmited(String value){
   setState((){
     inputValue = inputValue + "\n" + value;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs Text')
        ,
        
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Center(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
               Text(inputValue,  style: TextStyle(fontSize: 40)),
              TextField(
                decoration: InputDecoration(
                  hintText: "ingresa el texto"
                ),
                onSubmitted: (String value) {
                  onSubmited(value);
                },
              ),
             
            ],

          ),
        ),
      ),
      
    );
  }
}