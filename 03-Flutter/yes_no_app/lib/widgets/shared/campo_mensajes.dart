import 'package:flutter/material.dart';

class CampoMensajes extends StatelessWidget {

  final ValueChanged<String> onValue;

  const CampoMensajes({
    super.key,
    required this.onValue
  });

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();

    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide( color: Color.fromARGB(0, 195, 18, 18)),
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
            onValue(valorTexto);
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
        onValue(value);
      },
    );
  }
}









