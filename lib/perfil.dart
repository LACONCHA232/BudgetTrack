import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            SizedBox(width: 8),
            Text('BUDGETTRACK', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 32, 57, 154),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Times New Roman'))
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/perfil.png', width: 150, height: 150),
            Text('@UserName',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 200, height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                child: Text('Edición de perfil'),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200, height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                child: Text('Configuración'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
