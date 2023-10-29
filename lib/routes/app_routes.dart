import 'package:examen_cm/screens/screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'login';
  static Map<String, Widget Function(BuildContext)> routes = {
    'categories': (BuildContext context) => const CategoriesScreen(),
    'editcat': (BuildContext context) => const EditCategoryScreen(),
    'edit': (BuildContext context) => const EditProductScreen(),
    'home': (BuildContext context) => const HomeScreen(),
    'login': (BuildContext context) => const LoginScreen(),
    'product':(BuildContext context) => const ProductScreen(),
    'suppliers': (BuildContext context) => const SuppliersScreen(),
    
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ErrorScreen(),
    );}
}