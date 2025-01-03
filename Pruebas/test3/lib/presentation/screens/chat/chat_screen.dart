import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/domain/entities/message.dart';
import 'package:test3/presentation/providers/chat_provider.dart';
import 'package:test3/presentation/widgets/her_message_bubble.dart';
import 'package:test3/presentation/widgets/my_message_bubble.dart';
import 'package:test3/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "data:image/jpeg;base64,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"),
          ),
        ),
        title: const Text("Mi contacto"),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatprovider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Expanded(
                // sin este expandid la columna no puede alojar el list view builder.
                child: ListView.builder(
                    controller: chatprovider.scrollController,
                    // El list view builder debe de estar envuelto en un contenedor de tamaño determinado, sea este determinado de manera dinamica o de manera fija.
                    itemCount: chatprovider.messages.length, //define la longitud de la lista basado en la cantidad de mensajes en la lista de mensajes.
                    itemBuilder: (context, index) {
                      final message = chatprovider.messages[index];

                      return (message.fromWho == FromWho.hers)
                          ? const HerMessageBubble()
                          : MyMessageBubble(
                              message: message,
                            );
                    })),
            const MessageFieldBox(),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
