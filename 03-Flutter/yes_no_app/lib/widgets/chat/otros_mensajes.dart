import 'package:flutter/material.dart';

class OtrosMensajes extends StatelessWidget {
  const OtrosMensajes({super.key});

  @override
  Widget build(BuildContext context) {
 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _TextoMensaje(),
        SizedBox(height: 5),
        _ImagenChat(),
        SizedBox(height: 10),
      ],
    );
  }
}

class _TextoMensaje extends StatelessWidget {
  const _TextoMensaje();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colors.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Text(
        'Hola mundo',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class _ImagenChat extends StatelessWidget {
  const _ImagenChat();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final imageUrl = 'https://yesno.wtf/assets/no/20-56c4b19517aa69c8f7081939198341a4.gif';

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text(
              'Enviando imagen...',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          );
        },
        errorBuilder: (context, error, stackTrace) => Container(
          width: size.width * 0.7,
          height: 150,
          alignment: Alignment.center,
          color: Colors.grey.shade300,
          child: const Text('Error al cargar imagen'),
        ),
      ),
    );
  }
}
