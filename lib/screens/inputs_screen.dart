import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              autofocus: false,
              // initialValue: 'Jared Ayala',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print("value $value");
              },
              validator: (value) {
                if ( value == null) return 'este cambio es requerido';
                return value.length < 3 ? 'Minimo de 3 letras' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: 'Nombre del usuario',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                counterText: '',
                // prefixIcon: Icon(Icons.verified_user_outlined),
                suffixIcon: Icon( Icons.group_outlined),
                icon: Icon(Icons.assignment_ind_outlined),
                // border:  OutlineInputBorder(
                //  borderRadius: BorderRadius.only(
                //    bottomLeft: Radius.circular(10),
                //    topRight: Radius.circular(10)
                //  ),

                // ),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}