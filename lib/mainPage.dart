// main_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/budget.dart';
import 'package:flutter_application_1/config.dart';
import 'package:flutter_application_1/expenses.dart';
import 'package:flutter_application_1/perfil.dart';

List<String> productos = ['Budget', 'Expenses'];

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUDGETTRACK',
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 32, 57, 154),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Times New Roman')),
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
          Image.asset('assets/images/logotipo.png', width: 300, height: 300),
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
          Container(
            height: 50.0, // Altura del botón
            width: 300, // Ancho del botón
          child: ElevatedButton(
            onPressed: () {
              // Código para ejecutar cuando se presiona el botón
            },
            child: Text('Intelligent Performance', style: TextStyle(fontSize: 15)),
          ),
          ),
          SizedBox(height: 200),
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
                child: Image.asset(
                  'assets/images/logotipo-SinFondo.png',
                  fit: BoxFit.cover,
                ),
                // const Text('Menu', style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/logo-Gastos.png',
                  width: 50, height: 50),
              title: const Text('Saldo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => budget()),
                );
              },
              subtitle: const Text('Ingresos y Egresos',
                  style: TextStyle(fontSize: 10)),
            ),
            ListTile(
              leading: Image.asset('assets/images/gastos.png',
                  width: 50, height: 50),
              title: const Text('Gastos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => expenses()),
                );
              },
              subtitle: const Text('Apartados y Categorias',
                  style: TextStyle(fontSize: 10)),
            ),
            ListTile(
              leading: Image.asset('assets/images/perfil.png',
                  width: 50, height: 50),
              title: const Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              subtitle:
                  const Text('Usuario, Correo', style: TextStyle(fontSize: 10)),
            ),
            ListTile(
              leading: Image.asset('assets/images/configuraciones.png',
                  width: 50, height: 50),
              title: const Text('Configuracion'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Config()),
                );
              },
              subtitle: const Text('Divisa, Tema, Idioma/Region',
                  style: TextStyle(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
