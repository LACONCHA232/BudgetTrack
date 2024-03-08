import 'package:flutter/material.dart';


class budget extends StatelessWidget {
  const budget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('si', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 32, 57, 154),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontFamily: 'Times New Roman')),
    )
    );
  }
}