import 'package:flutter/material.dart';

class OtrosMensajes extends StatelessWidget {
  const OtrosMensajes({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundo', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
          ),
        ),
        const SizedBox(height: 5,),

        _ImagenChat(),

        const SizedBox(height: 10,)
      ],
    );
  }
}

class _ImagenChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/20-56c4b19517aa69c8f7081939198341a4.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
      ));
  }
}



