import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  // Lista de mensajes del chat
  final List<Message> messageList = [
    Message(text: 'Hola Rafa', persona: Persona.hombre),
    Message(text: 'Hola ya regresaste?', persona: Persona.hombre),
  ];

  // Controlador del scroll (opcional, útil si usas ListView con scroll automático)
  final ScrollController chatScrollController = ScrollController();

  // Método para enviar mensaje desde el usuario
  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    final nuevoMensaje = Message(
      text: text,
      persona: Persona.hombre,
    );

    messageList.add(nuevoMensaje);
    notifyListeners();

    // Simular respuesta automática después de un segundo
    await Future.delayed(const Duration(seconds: 1));
    _respuestaAutomatica();
  }

  void _respuestaAutomatica() {
    final respuesta = Message(
      text: 'Sí 😄', // o cualquier lógica de respuesta aleatoria
      persona: Persona.mujer,
    );

    messageList.add(respuesta);
    notifyListeners();

    _scrollToBottom();
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 300), () {
      if (chatScrollController.hasClients) {
        chatScrollController.animateTo(
          chatScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    chatScrollController.dispose();
    super.dispose();
  }
}
