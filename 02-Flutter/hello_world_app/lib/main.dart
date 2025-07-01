import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hola Flutter')),
        body: Center(
          child: Text(
            '¡Hola mundo!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    ),
  ); 
}
