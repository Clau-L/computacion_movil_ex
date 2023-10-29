import 'package:examen_cm/theme/my_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INICIO'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text('Bienvenido!', style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold,)),
            const SizedBox(height: 35),
            Center(
              child: Container(
                width: 300,
                height: 100,
                decoration: homeDecoration(),
                child: Row(
                  children: [
                    const SizedBox(width: 30,),
                    const Icon(
                      Icons.category,
                      color: Colors.white,
                      size: 35,
                    ),
                    const SizedBox(width: 30,),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'categories');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyTheme.primario), 
                      child: const Text('Categorias', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                      ),  
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                width: 300,
                height: 100,
                decoration: homeDecoration(),
                child: Row(
                  children: [
                    const SizedBox(width: 30,),
                    const Icon(
                      Icons.shopping_bag_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    const SizedBox(width: 30,),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'product');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyTheme.primario), 
                      child: const Text('Productos', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                      ),  
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Container(
                width: 300,
                height: 100,
                decoration: homeDecoration(),
                child: Row(
                  children: [
                    const SizedBox(width: 30,),
                    const Icon(
                      Icons.people_alt_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                    const SizedBox(width: 30,),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, 'suppliers');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyTheme.primario), 
                      child: const Text('Proveedores', style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold,),),
                      ),  
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  BoxDecoration homeDecoration () => BoxDecoration(
    color: const Color.fromARGB(210, 67, 120, 151),
    borderRadius: BorderRadius.circular(30),
    boxShadow: const [
      BoxShadow(
        color: MyTheme.primario,
        offset: Offset(0, 5),
        blurRadius: 10,
      )
    ]
  ); 
}

