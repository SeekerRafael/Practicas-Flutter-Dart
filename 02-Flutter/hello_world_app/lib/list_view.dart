import 'package:flutter/material.dart';

void main() => runApp(MyListApp());

class MyListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista dinámica',
      home: ListaDinamica(),
    );
  }
}

class ListaDinamica extends StatefulWidget {
  @override
  _ListaDinamicaState createState() => _ListaDinamicaState();
}

class _ListaDinamicaState extends State<ListaDinamica> {
  List<String> elementos = ['Elemento 1', 'Elemento 2', 'Elemento 3'];

  void agregarElemento() {
    setState(() {
      elementos.add('Elemento ${elementos.length + 1}');
    });
  }

  void eliminarElemento(int index) {
    setState(() {
      elementos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista dinámica')),
      body: ListView.builder(
        itemCount: elementos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(elementos[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => eliminarElemento(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: agregarElemento,
        child: Icon(Icons.add),
      ),
    );
  }
}
 

 