import 'package:flutter/material.dart';

class CampoMensajes extends StatelessWidget {
  const CampoMensajes({super.key});

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();

    final focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Colors.transparent),
      borderRadius: BorderRadius.circular(20)
    );

    final inputDecoracion = InputDecoration(
        hintText: 'End your message with a "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        fillColor: const Color.fromARGB(145, 0, 206, 34),
        filled: true,
        suffixIcon: IconButton( 
          icon: Icon ( Icons.send_outlined ),
          onPressed: () {
            final valorTexto = textController.text;
            print('boton: $valorTexto');
            textController.clear();
          },
          )     
      );


    return TextFormField(
      // keyboardType: ,
      onTapOutside:(event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,

      decoration: inputDecoracion,

      onFieldSubmitted: (value) {
        print('Valor: $value');
        textController.clear();
        focusNode.requestFocus();
      },

      



    );
  }
}









