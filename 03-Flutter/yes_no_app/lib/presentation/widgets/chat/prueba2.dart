import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegación con Datos',
      home: const PantallaInicio(),
    );
  }
}

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({super.key});

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  final TextEditingController _controller = TextEditingController();

  void _irASaludo() {
    if (_controller.text.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PantallaSaludo(nombre: _controller.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla de Inicio')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Escribe tu nombre'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _irASaludo,
              child: const Text('Saludar'),
            )
          ],
        ),
      ),
    );
  }
}

class PantallaSaludo extends StatelessWidget {
  final String nombre;

  const PantallaSaludo({super.key, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Saludo')),
      body: Center(
        child: Text('¡Hola, $nombre!', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}


