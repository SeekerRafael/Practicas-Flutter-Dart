import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/mis_mensajes.dart';
import 'package:yes_no_app/presentation/widgets/chat/otros_mensajes.dart';
import 'package:yes_no_app/presentation/widgets/shared/campo_mensajes.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudUCUyInOJagPGlZQtbQcW9u5rlF7Ou4bBg&s'),
          ),
        ),
        title: Text('Rafita'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return ( message.persona == Persona.mujer )
                    ? OtrosMensajes()
                    : MisMensajes();
              })),
            CampoMensajes()
          ],
        ),
      ),
    );
  }
}

