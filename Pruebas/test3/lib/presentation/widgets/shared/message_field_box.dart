import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide( 
            color: colors.primary,
          )
        ),
        filled: true,
        hintText: "Teclea",
        suffixIcon:  IconButton(onPressed: (){}, icon: const Icon(Icons.send)
        ),
      )
    );
  }
}