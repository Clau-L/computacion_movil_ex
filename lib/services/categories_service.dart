import 'package:examen_cm/models/categories.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CategoriesService extends ChangeNotifier {
  final String _baseUrl = '143.198.118.203:8000';
  final String _user = 'test';
  final String _pass = 'test2023';

  List<ListadoCategoria> categories = [];
  ListadoCategoria? selectCategorie;
  bool isLoading = true;

  CategoriesService() {
    loadCategories();
  }

  get selectedCategory => null;
  Future loadCategories() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.http(
      _baseUrl,
      'ejemplos/category_list_rest/',
    );
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    final categoriesMap = Categories.fromRawJson(response.body);
    print(response.body);
    categories = categoriesMap.listadoCategorias;
    isLoading = false;
    notifyListeners();
  }
/// crear 
///borrar
}