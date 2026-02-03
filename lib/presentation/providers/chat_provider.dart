import 'package:flutter/material.dart';
import 'package:flutter_test_1/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola mon!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo', fromWho: FromWho.hers),
    Message(text: 'Sí, estuve ocupado', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //   TODO implementar método
  }
}
