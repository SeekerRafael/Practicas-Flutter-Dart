import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class MisMensajes extends StatelessWidget {
  final Message message;

  const MisMensajes({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
