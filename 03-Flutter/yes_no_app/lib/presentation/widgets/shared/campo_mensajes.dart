import 'package:flutter/material.dart';

class CampoMensajes extends StatelessWidget {
  const CampoMensajes({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoracion = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        fillColor: const Color.fromARGB(145, 0, 27, 206),
        filled: true,
        suffixIcon: IconButton( 
          icon: Icon ( Icons.send_outlined ),
          onPressed: () {},
          )     
      );


    return TextFormField(
      decoration: inputDecoracion,

      onFieldSubmitted: (value) {
        print('Valor: $value');
      },

      onChanged: (value) {
        print('change: $value');
      },



    );
  }
}









