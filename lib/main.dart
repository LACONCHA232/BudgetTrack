import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BUDGETTRACK',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BUDGETTRACK', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 32, 57, 154),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Times New Roman')),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Column(
            //   children: [
            //     Text('Tienda de Suplementos', style: TextStyle(fontSize: 70,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
            //     Text('Gimnasio', style: TextStyle(fontSize: 30,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
            //     ],
            //   ),
              Image.asset('assets/images/logotipo.png', width: 300, height: 300),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Productos', style: TextStyle(fontSize: 30,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
                  Text('Proteina', style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
                  Text('Creatina', style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
                  Text('Aminoacidos', style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
                  Text('Multivitaminicos', style: TextStyle(fontSize: 20,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
                  SizedBox(height: 8.0),
                ],
              ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 100,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset('assets/images/logotipo-SinFondo.png', width: 300, height: 300),
                  // const Text('Menu', style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/logo-Gastos.png', width: 50, height: 50),
                title: const Text('Saldo'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Ingresos y Egresos', style: TextStyle(fontSize: 10)),
              ),
              ListTile(
                title: const Text('Gastos'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Apartados y Categorias', style: TextStyle(fontSize: 10)),
              ),
              ListTile(
                title: const Text('Perfil'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Usuario, Correo', style: TextStyle(fontSize: 10)),
              ),
              ListTile(
                title: const Text('Configuracion'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Divisa, Tema, Idioma/Region', style: TextStyle(fontSize: 10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
