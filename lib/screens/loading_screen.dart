import 'package:examen_cm/theme/my_theme.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cargando...'),
          centerTitle: true,
          backgroundColor: MyTheme.primario,
        ),
        body:  const Center(
          child: Text('Loading screen'),
        ),
      ),
    );
  }
}