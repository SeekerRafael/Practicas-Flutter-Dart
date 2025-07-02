import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: FormularioSimple()));

class FormularioSimple extends StatefulWidget {
  @override
  _FormularioSimpleState createState() => _FormularioSimpleState();
}

class _FormularioSimpleState extends State<FormularioSimple> {
  String texto = '';
  final controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulario')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: controlador),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  texto = controlador.text;
                });
              },
              child: Text('Mostrar'),
            ),
            Text('Texto ingresado: $texto'),
          ],
        ),
      ),
    );
  }
}

