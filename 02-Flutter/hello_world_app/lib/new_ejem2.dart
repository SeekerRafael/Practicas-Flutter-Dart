import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación',
      home: PrimeraPantalla(),
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  final String mensaje = "Hola desde la primera pantalla";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primera Pantalla')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a Segunda Pantalla'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaPantalla(mensaje: mensaje),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  final String mensaje;

  SegundaPantalla({required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Pantalla')),
      body: Center(
        child: Text(
          mensaje,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
