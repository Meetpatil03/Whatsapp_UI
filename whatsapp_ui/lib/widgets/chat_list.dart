import 'package:flutter/material.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widgets/message_sender_card.dart';
import 'package:whatsapp_ui/widgets/my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          // message is send by us -> card for message
          return MyMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        } else {
          // message is send by the sender -> card for message
          return SenderMessageCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
      },
    );
  }
}
