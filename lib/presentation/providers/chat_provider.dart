import 'package:flutter/material.dart';
import 'package:flutter_test_1/config/helpers/get_yes_no_answer.dart';
import 'package:flutter_test_1/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(text: 'Hola mon!', fromWho: FromWho.me),
    Message(
      text: 'Ya regresaste del trabajo',
      fromWho: FromWho.hers,
      imageUrl: 'https://media.tenor.com/USRLS23Cb4UAAAAj/ogerpon-pokemon.gif',
    ),
    Message(text: 'Sí, estuve ocupado', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);

    notifyListeners();
    moveScrollToBottom();
  }
}
