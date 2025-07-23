import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';

import '../../../../widgets/chat/mis_mensajes.dart';
import '../../../../widgets/chat/otros_mensajes.dart';
import '../../../../widgets/shared/campo_mensajes.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudUCUyInOJagPGlZQtbQcW9u5rlF7Ou4bBg&s',
            ),
          ),
        ),
        title: const Text('Rafita'),
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    Widget _buildMessageWidget(Message message) {
      if (message.persona == Persona.mujer) {
        return const OtrosMensajes();
      } else {
        return MisMensajes(message: message);
      }
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (BuildContext context, int index) {
                  final message = chatProvider.messageList[index];
                  return _buildMessageWidget(message);
                },
              ),
            ),
            CampoMensajes(
              onValue: (String value) => chatProvider.sendMessage(value),
            ),
          ],
        ),
      ),
    );
  }
}
