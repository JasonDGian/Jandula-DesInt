import 'package:flutter/material.dart';
import 'package:test3/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble( 
    { 
    required this.message, super.key
    }
 );

  final Message message;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
   

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container( 
          //height: 100,
          //width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), 
            color: colors.primary,
          ),
          child: Padding(
            padding:  const EdgeInsets.all(15.0),
            child:  Text(
                message.text, 
                style: const TextStyle(color: Colors.white),
              ),
            ),
         ),
        const SizedBox(height: 10)
      ],
    );
  }
}