import 'package:examen_cm/models/categories.dart';
import 'package:examen_cm/screens/loading_screen.dart';
import 'package:examen_cm/services/categories_service.dart';
import 'package:examen_cm/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categoriesService = Provider.of<CategoriesService>(context);
    if (categoriesService.isLoading) return LoadingScreen();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listado de Categorias'),
        ),
        body: ListView.builder(
          itemCount: categoriesService.categories.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, index) => GestureDetector(
            onTap: () {
              categoriesService.selectCategorie =
                  categoriesService.categories[index].copy();
              Navigator.pushNamed(context, 'editcat');
            }, 
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 15),
              width: double.infinity,
              height: 150,
              decoration: categoriesDecoration(),
              child:Column (
              children: [
                const SizedBox(height:20),   
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    const SizedBox(width: 20,),
                    const Icon(
                      Icons.category,
                      color: MyTheme.primario,
                      size: 25, 
                    ),
                    const SizedBox(width: 30,),
                    Column(
                      children: [
                        Text('Id Categoria: ${categoriesService.categories[index].categoryId}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.bold,)),
                        const SizedBox(height:15),
                        Text('Nombre: ${categoriesService.categories[index].categoryName}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.normal,)),
                        const SizedBox(height:15),
                        Text('Estado Categoria: ${categoriesService.categories[index].categoryState}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.normal,)),
                      ],
                    ),
                    const SizedBox(width: 30,),
                    const Expanded(
                      child: Align(
                        alignment:Alignment.centerRight,
                        child:Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Color.fromARGB(255, 136, 135, 135),
                          size: 25,), ) ),                                   
                  ],)             
            ],),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          categoriesService.selectCategorie = ListadoCategoria(
              categoryId: 0,
              categoryName: '',
              categoryState: '');
          Navigator.pushNamed(context, 'editcat');
        },
      ),
        );
  }
}
BoxDecoration categoriesDecoration() => const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: MyTheme.primario,
              offset: Offset(0, 5),
              blurRadius: 10,
            )
          ]);
///lista - icono, nombre categoria, boton --> pantalla categorie_details_screen