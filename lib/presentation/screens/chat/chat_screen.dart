import 'package:flutter/material.dart';
import 'package:flutter_test_1/domain/entities/message.dart';
import 'package:flutter_test_1/presentation/providers/chat_provider.dart';
import 'package:flutter_test_1/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_test_1/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_test_1/presentation/widgets/shared/message_field_box.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const String imgUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgknyhKdrjAMyVGlBYpBxNybGkN-FAVqGQdA&s";
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon'),
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(backgroundImage: NetworkImage(imgUrl)),
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];

                  return (message.fromWho == FromWho.hers)
                      ? HerMessageBubble()
                      : MyMessageBubble(
                          message: message,
                        );
                },
              ),
            ),
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
