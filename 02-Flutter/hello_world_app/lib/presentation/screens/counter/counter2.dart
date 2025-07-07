import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contadores de 2 en 2',
      home: Scaffold(
        appBar: AppBar(title: const Text('Sumar de 2 en 2')),
        body: const Padding(
          padding: EdgeInsets.all(12.0),
          child: ContadoresGrid(),
        ),
      ),
    );
  }
}

class ContadoresGrid extends StatelessWidget {
  const ContadoresGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 2 por fila
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      children: List.generate(6, (_) => const ContadorWidget()),
    );
  }
}

class ContadorWidget extends StatefulWidget {
  const ContadorWidget({super.key});

  @override
  State<ContadorWidget> createState() => _ContadorWidgetState();
}

class _ContadorWidgetState extends State<ContadorWidget> {
  int _valor = 0;

  void _sumarDos() {
    setState(() {
      _valor += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal.shade400,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_valor',
            style: const TextStyle(fontSize: 36, color: Colors.white),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: _sumarDos,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.teal.shade700,
            ),
            child: const Text('Sumar +2'),
          ),
        ],
      ),
    );
  }
}


