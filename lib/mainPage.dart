// main_page.dart
import 'package:flutter/material.dart';

List<String> productos = ['Saldo', 'Gastos'];

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    child: Card(
                      child: Center(child: Text(productos[index])),
                    ),
                  );
                },
              ),
            ),
            // Otros widgets pueden ir aquí
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 150,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Image.asset('assets/images/logotipo-SinFondo.png', fit: BoxFit.cover,),
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
                leading: Image.asset('assets/images/gastos.png', width: 50, height: 50),
                title: const Text('Gastos'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Apartados y Categorias', style: TextStyle(fontSize: 10)),
              ),
              ListTile(
                leading: Image.asset('assets/images/perfil.png', width: 50, height: 50),
                title: const Text('Perfil'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Usuario, Correo', style: TextStyle(fontSize: 10)),
              ),
              ListTile(
                leading: Image.asset('assets/images/configuraciones.png', width: 50, height: 50),
                title: const Text('Configuracion'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Divisa, Tema, Idioma/Region', style: TextStyle(fontSize: 10)),
              ),
            ],
          ),
        ),
      );
  }
}