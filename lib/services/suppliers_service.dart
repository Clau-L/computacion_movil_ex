import 'package:examen_cm/models/supplier.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SuppliersService extends ChangeNotifier {
  final String _baseUrl = '143.198.118.203:8000';
  final String _user = 'test';
  final String _pass = 'test2023';

  List<ProveedoresListado> suppliers = [];
  ProveedoresListado? selectSupplier;
  bool isLoading = true;

  SuppliersService() {
    loadCategories();
  }

  get selectedProduct => null;
  Future loadCategories() async {
    isLoading = true;
    notifyListeners();
    final url = Uri.http(
      _baseUrl,
      'ejemplos/provider_list_rest//',
    );
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    final suppliersMap = Supplier.fromRawJson(response.body);
    print(response.body);
    suppliers = suppliersMap.proveedoresListado;
    isLoading = false;
    notifyListeners();
  }
/// crear 
///borrar
}