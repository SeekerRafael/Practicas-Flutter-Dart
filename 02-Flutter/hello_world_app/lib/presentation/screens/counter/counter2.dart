import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid 2x2',
      home: Scaffold(
        appBar: AppBar(title: const Text('Contenedores de 2 en 2')),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: GridViewExample(),
        ),
      ),
    );
  }
}

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // 2 por fila
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(6, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.blue[(index + 1) * 100],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        );
      }),
    );
  }
}


