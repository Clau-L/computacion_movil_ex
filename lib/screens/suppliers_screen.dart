import 'package:examen_cm/screens/categories_screen.dart';
import 'package:examen_cm/screens/loading_screen.dart';
import 'package:examen_cm/services/suppliers_service.dart';
import 'package:examen_cm/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuppliersScreen extends StatelessWidget {
  const SuppliersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final suppliersService = Provider.of<SuppliersService>(context);
    if (suppliersService.isLoading) return LoadingScreen();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listado de Proveedores'),
        ),
        body: ListView.builder(
          itemCount: suppliersService.suppliers.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (BuildContext context, index) => GestureDetector(
            onTap: () {
              suppliersService.selectSupplier =
                  suppliersService.suppliers[index].copyWith();
              Navigator.pushNamed(context, 'editcat');
            },
            child: Container(
              margin: const EdgeInsets.only(top: 30, bottom: 15),
              width: double.infinity,
              height: 350,
              decoration: categoriesDecoration(),
              child: Column(
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
                        Text('Id Provedor: ${suppliersService.suppliers[index].providerid}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.bold,)),
                        const SizedBox(height:15),
                        Text('Nombre: ${suppliersService.suppliers[index].providerName}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.normal,)),
                        const SizedBox(height:15),
                        Text('Apellido: ${suppliersService.suppliers[index].providerLastName}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.normal,)),
                        const SizedBox(height:15),
                        Text('Mail: ${suppliersService.suppliers[index].providerMail}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.normal,)),
                        const SizedBox(height:15),
                        Text('Estado: ${suppliersService.suppliers[index].providerState}', style: const TextStyle(color: Color.fromARGB(255, 100, 99, 99), fontSize: 15,fontWeight: FontWeight.normal,)),
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
                  ],),
                ],
              ),
            ),
            )
            
      ));
  }
}
