import 'package:flutter/material.dart';
import 'package:paises/presentation/providers/country_provider.dart';
import 'package:provider/provider.dart';

class TextFieldInput extends StatelessWidget {
  TextFieldInput({super.key});
  final cp = CountryProvider();

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    final textController = TextEditingController();

    final cp = context.watch<CountryProvider>();

    final underlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.green),
        borderRadius: BorderRadius.circular(25));

    final inputDecorationX = InputDecoration(
      enabledBorder: underlineInputBorder,
      focusedBorder: underlineInputBorder,
      filled: true,
      hintText: "Teclea el nombre de un pais.",
      suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.text;
            cp.buscaPais(textValue.toString());
            print(textValue);
            textController.clear();
          },
          icon: const Icon(Icons.send)),
    );

    return TextFormField(
      onTapOutside: (event) => focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecorationX,
      onFieldSubmitted: (value) {
        print(value);
        cp.buscaPais(value); // Dice al provider que busque un valor.
        textController.clear(); // Limpia el formulario al submitir.
        focusNode.requestFocus(); // Recupera el foco al submitir.
      },
    );
  }
}
