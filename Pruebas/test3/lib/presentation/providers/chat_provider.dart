import 'package:flutter/material.dart';
import 'package:test3/config/helpers/get_yes_no_answer.dart';
import 'package:test3/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messages = [];

  final ScrollController scrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      return;
    }

    if (text.endsWith("?")) {
      await herReply();
      moveToBottom();
      notifyListeners();
    }

    messages.add(Message(
        fromWho: FromWho.my,
        text: text)); // a la lista de mensajes agrega un nuevo objeto mensaje.
    moveToBottom();
    notifyListeners(); // Notifica a los escuchantes.
  }

  Future<void> moveToBottom() async {
    await Future.delayed((const Duration(
        milliseconds:
            100))); // al introducir un retraso permite al mensaje ultimo dibujarse antes de deslizar la pantalla.
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
