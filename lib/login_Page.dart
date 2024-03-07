// login_page.dart
import 'package:flutter/material.dart';
import 'mainPage.dart'; // Importa esto para poder navegar a MainPage

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset('assets/images/idiomas.png', fit: BoxFit.cover, width: 50, height: 50),
                ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/logotipo.png', width: 200, height: 200),
            Image.asset('assets/images/perfil.png', width: 100, height: 100),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // Espacio horizontal de 20 píxeles
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Usuario',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // Espacio horizontal de 20 píxeles
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 50.0, // Altura del botón
              width: 200, // Ancho del botón
              child: ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}