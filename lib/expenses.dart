import 'package:flutter/material.dart';
import 'package:flutter_application_1/entertainment.dart';
import 'package:flutter_application_1/fixed_expenses.dart';
import 'package:flutter_application_1/transport.dart';

class expenses extends StatelessWidget {
  const expenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUTGETTRACK',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 32, 57, 154),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Times New Roman')),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0, top: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/perfil.png',
                  width: 50, height: 50),
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 20), // Espacio en la parte superior (20 píxeles
              Image.asset('assets/images/gastos.png', width: 100, height: 100),
              SizedBox(height: 10), // Espacio en la parte superior (20 píxeles
              Text(
                'EXPENSES',
                style: TextStyle(
                  fontSize: 50, // Tamaño de fuente grande
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0,
                      0), // Color de texto que contrasta con el fondo azul
                ),
                textAlign: TextAlign.center, // Centra el texto
              ),
              Text(
                'CATEGORIES',
                style: TextStyle(
                  fontSize: 30, // Tamaño de fuente
                  color: const Color.fromARGB(255, 0, 0, 0), // Color de texto
                ),
                textAlign: TextAlign.center, // Centra el texto
              ),
              SizedBox(height: 70), // Espacio entre el título y los botones
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => entertainment()),
                    );
                  },
                  child: Text('ENTERNTAINMENT'),
                ),
              ),
              SizedBox(height: 40), // Espacio entre botones
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => transport()),
                    );
                  },
                  child: Text('TRANSPORT'),
                ),
              ),
              SizedBox(height: 40), // Espacio entre botones
              Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fixed_expenses()),
                    );
                  },
                  child: Text('FIXED EXPENSES'),
                ),
              ),
              // Resto de tus widgets van aquí
            ],
          ),
        ),
      ),
    );
  }
}
