import 'package:components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormkey = GlobalKey();

    final Map<String, String> formValues = {
      'first_name':   'Jared',
      'last_name' :   'Ayala',
      'email'     :   'jyala@google.com',
      'password'  :   '123456',
      'role'      :   'Admin',
    };
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Inputs y Forms')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormkey,
            child: Column(
              children:  [
                SizedBox( height: 30,),
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del usuario', formProperety: 'first_name', formValues: formValues,),
                SizedBox( height: 30,),
                CustomInputField( labelText: 'Apellido', hintText: 'Apellido del usuario',formProperety: 'last_name', formValues: formValues),
                SizedBox( height: 30  ),
          
                CustomInputField( labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress,formProperety: 'email', formValues: formValues),
                SizedBox( height: 30  ),
          
                CustomInputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,formProperety: 'password', formValues: formValues),
                SizedBox( height: 30  ),

                DropdownButtonFormField<String>(
                  items: [
                  DropdownMenuItem( value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem( value: 'Superuser', child: Text('SuperUser')),
                  DropdownMenuItem( value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem( value: 'J.R Developer', child: Text('J.R Developer')),
                ],
                onChanged: ( value ) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                },),
          
                ElevatedButton(
                  child: SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Guardar'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormkey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }
                    print(formValues);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
