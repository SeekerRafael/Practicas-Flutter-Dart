import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MisMensajes extends StatelessWidget {

  final Message message;

  const MisMensajes({super.key, required, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
          ),
        ),
        const SizedBox(height: 10,)

      ],
    );



  }
}