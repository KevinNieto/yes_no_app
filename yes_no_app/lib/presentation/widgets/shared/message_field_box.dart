import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      //Place Holder
      hintText: 'End your message with a "?"',
      //Estilos de los bordes
      enabledBorder: outlineInputBorder,
      //Estilos de los bordes cuando tocas la caja de texto
      focusedBorder: outlineInputBorder,
      //Hace que la caja de texto tome los colores
      filled: true,
      //El boton de enviar
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('Button $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      //Cuando toque afuera de la caja de texto le quitara el foco
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      //ESTILOS
      decoration: inputDecoration,
      //Valor del envia
      onFieldSubmitted: (value) {
        print('Submit value $value');
        textController.clear();
        //Mantendra el foco despues de limpiar
        focusNode.requestFocus();
      },
      //Valor cuando cambia
      // onChanged: (value) {
      //   print('change: $value');
      // },
    );
  }
}
