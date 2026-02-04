import 'package:flutter/material.dart';
import 'package:flutter_test_1/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  Message message;
  MyMessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              message.text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}

// class MyMessageBubble extends StatefulWidget {
//   const MyMessageBubble({super.key});
//   //
//
//   @override
//   State<StatefulWidget> createState() {
//     return _MyStatefulWidgetState();
//   }
//   }
//
// class _MyStatefulWidgetState extends State<MyMessageBubble> {
//   String _message = '';
//
//   void _setMessage(String text) {
//     setState(() {
//       _message = text;
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     final colors = Theme
//         .of(context)
//         .colorScheme;
//
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: colors.primary,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               '$_message',
//               style: const TextStyle(color: Colors.white),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//       ],
//     );
//   }
//
// }
