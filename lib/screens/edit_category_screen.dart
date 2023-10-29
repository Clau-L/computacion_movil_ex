import 'package:examen_cm/provider/category_form_provider.dart';
import 'package:examen_cm/services/categories_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditCategoryScreen extends StatelessWidget {
  const EditCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categoriesService = Provider.of<CategoriesService>(context);
    return ChangeNotifierProvider(
        create: (_) =>  CategoryFormProvider(categoriesService.selectCategorie!),
        child: _CategoryScreenBody(
          categoryService: categoriesService,
        ));
  }
}

class _CategoryScreenBody extends StatelessWidget {
  const _CategoryScreenBody({
    Key? key,
    required this.categoryService,
  }) : super(key: key);
  final CategoriesService categoryService;
  @override
  Widget build(BuildContext context){
    ///final categoryForm = Provider.of<CategoryFormProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title:const Text('Editar Categoria'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text ('Editar Categorias'),
      )
        );
      }
}


  