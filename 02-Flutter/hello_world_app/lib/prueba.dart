import 'package:flutter/material.dart';

void main() {
  runApp(SaludoApp());
}

class SaludoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SaludoScreen(),
    );
  }
}

class SaludoScreen extends StatefulWidget {
  @override
  _SaludoScreenState createState() => _SaludoScreenState();
}

class _SaludoScreenState extends State<SaludoScreen> {
  String nombre = '';
  String mensaje = '';

  final controlador = TextEditingController();

  void saludar() {
    setState(() {
      mensaje = '¡Hola, $nombre!';
    });
  }

  @override
  void dispose() {
    controlador.dispose(); // limpiar al cerrar
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saludo App')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controlador,
              decoration: InputDecoration(labelText: 'Escribe tu nombre'),
              onChanged: (valor) {
                setState(() {
                  nombre = valor;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: saludar,
              child: Text('Saludar'),
            ),
            SizedBox(height: 20),
            Text(
              mensaje,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
