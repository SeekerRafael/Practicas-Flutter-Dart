import 'package:flutter/material.dart';
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
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/uncharted/images/e/e1/Nathan_Drake_from_ATE_headshot.png/revision/latest?cb=20221025141033'),
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ( index % 2 == 0) 
                    ? const OtrosMensajes()
                    : const MisMensajes();
              })),
            CampoMensajes()
          ],
        ),
      ),
    );
  }
}

