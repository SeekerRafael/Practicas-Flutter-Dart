
import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> messageList = [
    Message(text: 'Hola Rafa', persona: Persona.hombre),
    Message(text: 'Hola ya regresaste?', persona: Persona.hombre),
  ];

  Future<void> sendMessage( String text ) async {
    // TODO: implementar metodo

    final nuevoMensaje = Message(text: text, persona: Persona.hombre);
    messageList.add(nuevoMensaje);

    notifyListeners();

  }



}