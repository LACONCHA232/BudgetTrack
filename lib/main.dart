import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SUPLEMENTOS GYM'),
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
              Image.network('https://blog.laminasyaceros.com/hs-fs/hubfs/suplementos-gym.jpg?width=537&height=245&name=suplementos-gym.jpg'),
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
                  child: const Text('Menu', style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Roboto')),
                ),
              ),
              ListTile(
                title: const Text('Inicio'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Productos'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Proteina, Creatina, Aminoacidos, Multivitaminicos', style: TextStyle(fontSize: 10)),
              ),
              ListTile(
                title: const Text('Contacto'),
                onTap: () {
                  Navigator.pop(context);
                },
                subtitle: const Text('Telefono, Correo, Redes Sociales', style: TextStyle(fontSize: 10)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
