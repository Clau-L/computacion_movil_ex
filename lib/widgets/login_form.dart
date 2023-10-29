import 'package:examen_cm/ui/input_decorations.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField( ///usuario
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: InputDecorations.authInputDecoration(
                hinText: 'Ingrese su Usuario', 
                labelText: 'Nombre de Usuario',
                prefixIcon: Icons.people),
                validator: (value){
                  return (value != null && value.length >= 4) ? null: 'Debe ingresar un usuario valido';
                },
            ),
            const SizedBox(height: 30,),
            TextFormField( ///CONTRASE˜NA
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecorations.authInputDecoration(
                hinText: '**************', 
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_outline),
                validator: (value){
                  return (value != null && value.length >= 4) ? null: 'La contraseña esta incorrecta';
                },
            ),
            const SizedBox(height: 30,),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
              disabledColor: Colors.grey,
              color: Colors.blueGrey,
              elevation: 0,
              onPressed: () async {
                Navigator.pushNamed(context, 'home');
              }, ///CONECTARLO CON EL SERVICIO!!!
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                child: const Text ('Ingresar', style: TextStyle(color: Colors.white),),
              ), 
            )
          ],
        ),
      ),
    );
  }
}