import 'package:flutter/material.dart';
import 'package:flutter_test_1/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_test_1/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_test_1/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : MyMessageBubble();
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
