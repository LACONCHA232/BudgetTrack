import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
    

    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      
      home: Scaffold(
        key: scaffoldkey,
        backgroundColor: Colors.white,
       
        body: Column(
          children: [
            _buildTopSection(),
            
            _buildMiddleSection(),
            
              _buildBottomSection(),
          ],
          ),
      ),
    );
  }
}

Widget _buildTopSection() {
return const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Configuración',
style: TextStyle(fontSize: 40, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'
),
),
],
);
}

Widget _buildMiddleSection() {
return Column(
  crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      
  children: [const SizedBox(height: 100,),
  DropdownButtonFormField(
    
  items: listaDeOpciones.map((e){
    return DropdownMenuItem(
      value: e,
      child: SizedBox(
        width: double.infinity,
        child: Text(
          e,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }).toList(),
  onChanged: (void value) {},
  isDense: true,
  isExpanded: true,
),
const SizedBox(height: 40,),
DropdownButtonFormField(
  items: listaDeidiomas.map((e){
    return DropdownMenuItem(
      value: e,
      child: SizedBox(
        width: double.infinity,
        child: Text(
          e,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }).toList(),
  onChanged: (void value) {
  },
  isDense: true,
  isExpanded: true,
),

  const SizedBox(height: 50), // Agrega un espacio entre los dropdowns y el botón
      ElevatedButton(
        onPressed: () {
         
          // Lógica para activar/desactivar el modo oscuro
        },
        child: const Text("Modo oscuro"),
      ),
       const SizedBox(height: 185),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.phone),
          SizedBox(width: 20), // Agrega un espacio entre los iconos
          Icon(Icons.mail),
        ],
      ),
  ],
);
} //middlesection


Widget _buildBottomSection() {
return const Column(
mainAxisSize: MainAxisSize.min,
children: [
  SizedBox(height: 20,),
Text('BudgetTrack'),
SizedBox(height: 8.0),
Text('Versión 1.0'),

],
);
}


List<String> listaDeOpciones = <String>["Seleccione moneda","Pesos","Dolares","Euros","Soles","Yen","Libras"];
List<String> listaDeidiomas = <String>["Seleccione idioma","Español","English"];