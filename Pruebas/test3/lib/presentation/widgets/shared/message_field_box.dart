import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final textController = TextEditingController();

    final underlineInputBorder = UnderlineInputBorder(
        borderSide: BorderSide(color: colors.primary),
        borderRadius: BorderRadius.circular(25));

    final inputDecorationX = InputDecoration(
      enabledBorder: underlineInputBorder,
      focusedBorder: underlineInputBorder,
      filled: true,
      hintText: "Teclea",
      suffixIcon: IconButton(
          onPressed: () {
            final textvalue = textController.text;
            print("Send message $textvalue");
            textController.clear();
          },
          icon: const Icon(Icons.send)),
    );

    final focusNode = FocusNode();

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecorationX,
      onFieldSubmitted: (value) {
        print("Message submit $value");
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print('Changed value $value');
      },
    );
  }
}
