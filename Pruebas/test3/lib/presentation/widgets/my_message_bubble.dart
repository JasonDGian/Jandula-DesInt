import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container( 
          height: 45,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), 
            color: colors.primary,
          ),
          child: const Padding(
            padding:  EdgeInsets.all(15.0),
            child:  Text(
                "esto es un placeholder", 
                style: TextStyle(color: Colors.white),
              ),
            ),
         ),
        const SizedBox(height: 10)
      ],
    );
  }
}