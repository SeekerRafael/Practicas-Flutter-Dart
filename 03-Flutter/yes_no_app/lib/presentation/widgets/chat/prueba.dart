import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tareas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<String> _tareas = [];
  final TextEditingController _controller = TextEditingController();

  void _agregarTarea() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _tareas.add(_controller.text);
        _controller.clear();
      });
    }
  }

  void _eliminarTarea(int index) {
    setState(() {
      _tareas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ToDo List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(labelText: 'Nueva tarea'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _agregarTarea,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tareas.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_tareas[index]),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _eliminarTarea(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
