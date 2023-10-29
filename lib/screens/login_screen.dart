
import 'package:examen_cm/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LogBackground(
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height:150),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('login', style: Theme.of(context).textTheme.headlineMedium,),
                    const SizedBox(height: 30),
                    LoginForm(),
                    const SizedBox(height: 50),
                    const Text('Olvidaste tu contraseña?')
                  ]
                ))
            ],),
          ),
        ),
      );
  }
}