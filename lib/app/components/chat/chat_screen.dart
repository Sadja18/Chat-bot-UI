import 'dart:developer';

import 'package:chatbot_ui/app/components/widgets/message/message.dart';
import 'package:chatbot_ui/app/services/request_handlers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat-screen';
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];
  List<String> replies = [];

  void addMessage(String message) {
    setState(() {
      // Add message to messages list
      messages.add(message);
    });

    generateResponse(message).then((reply) {
      setState(() {
        // Add reply to replies list
        replies.add(reply);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask me anything"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height * 0.60,
        width: MediaQuery.of(context).size.width * 0.80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: MessageWidget(message: messages[index]),
                    subtitle: MessageWidget(message: replies[index]),
                  );
                },
              ),
            ),
            TextField(
              onSubmitted: addMessage,
              decoration: const InputDecoration(
                hintText: 'Enter a message',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
