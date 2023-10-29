import 'package:examen_cm/routes/app_routes.dart';
import 'package:examen_cm/services/categories_service.dart';
import 'package:examen_cm/services/product_service.dart';
import 'package:examen_cm/services/suppliers_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/my_theme.dart';

void main() => runApp(AppState());

///AGREGAR ACA EL PROVIDER
class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductService()), 
        ChangeNotifierProvider(create: (_) => CategoriesService()),
        ChangeNotifierProvider(create: (_) => SuppliersService())
        ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Material App',
     initialRoute: AppRoutes.initialRoute,
     routes: AppRoutes.routes,
     onGenerateRoute: AppRoutes.onGenerateRoute,
     theme: MyTheme.myTheme,
    );
  }
}
