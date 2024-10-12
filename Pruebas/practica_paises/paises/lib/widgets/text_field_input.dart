import 'package:flutter/material.dart';
import 'package:paises/presentation/providers/country_provider.dart';
import 'package:provider/provider.dart';

// Clase mia que he llamado "TextFieldInput"
class TextFieldInput extends StatelessWidget {
  const TextFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    // Gestor de focus.
    final focusNode = FocusNode();

    // Controlador de formulario de texto.
    final textController = TextEditingController();

    // Instancia del proveedor - Es observada por este widget y atiende a cambios.
    final countryProvider = context.watch<CountryProvider>();

    // Decoracion para el formulario de texto.
    final underlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
        borderRadius: BorderRadius.circular(25));

    // Decoracion para el formulario de texto.
    final inputDecorationX = InputDecoration(
      fillColor: const Color.fromARGB(255, 255, 239, 167),
      enabledBorder: underlineInputBorder,
      focusedBorder: underlineInputBorder,
      filled: true,
      hintText: "Teclea el nombre de un pais.",
      suffixIcon: IconButton(
          onPressed: () {
            final textValue = textController.text;
            countryProvider.buscaPais(textValue.toString());
            textController.clear();
          },
          icon: const Icon(Icons.send)),
    );

    // Devuelve el TextFormField personalizado.
    return TextFormField(
      // Al tocar fuera pierde el foco.
      onTapOutside: (event) => focusNode.unfocus(),

      // Especifica el gestor de foco.
      focusNode: focusNode,

      // Especifica controlador de campo de texto.
      controller: textController,

      // Especifica la decoracion.
      decoration: inputDecorationX,

      // Al darle al enter llama a la funcion anonima.
      onFieldSubmitted: (value) {
        // Dice al proveedor de buscar el pais usando el valor introducido por formulario.
        countryProvider.buscaPais(value);
        textController.clear(); // Limpia el campo de texto tras enviar.
        focusNode.requestFocus(); // Recupera el foco al enviar.
      },
    );
  }
}
