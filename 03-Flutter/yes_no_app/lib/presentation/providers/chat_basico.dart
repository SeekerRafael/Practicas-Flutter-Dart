import 'package:flutter/material.dart';

void main() => runApp(const ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  final List<String> mensajes = const [
    'Hola, ¿cómo estás?',
    'Bien, ¿y tú?',
    'También bien, gracias.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: ListView.builder(
        itemCount: mensajes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mensajes[index]),
          );
        },
      ),
    );
  }
}
