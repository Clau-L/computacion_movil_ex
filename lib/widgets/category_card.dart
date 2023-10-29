import 'package:examen_cm/models/categories.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final ListadoCategoria category;
  const CategoryCard({Key? key, required this.category}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}