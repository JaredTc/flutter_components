import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String?  hintText;
  final String?  labelText;
  final String?  helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;


  final String formProperety;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.suffixIcon, 
    this.icon, 
    this.keyboardType,
    this.obscureText = false, 
    required this.formProperety, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      // initialValue: 'Jared Ayala',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType ,
      obscureText: obscureText,
      onChanged: (value)  => formValues[formProperety] = value,
      validator: (value) {
        if ( value == null) return 'este cambio es requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null :  Icon( suffixIcon ),
        icon: icon == null ? null : Icon( icon ),
        // icon: Icon(Icons.assignment_ind_outlined),
      ),
    );
  }
}