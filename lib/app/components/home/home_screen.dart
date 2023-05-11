// ignore_for_file: avoid_unnecessary_containers

import 'dart:developer';

import 'package:chatbot_ui/app/components/chat/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Bot"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  log('Ask me anything clicked');
                }

                Navigator.pushNamed(context, ChatScreen.routeName);
              },
              child: Container(
                child: const Text(
                  "Open Chat",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  log('License clicked');
                }
              },
              child: Container(
                child: const Text(
                  "License",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
