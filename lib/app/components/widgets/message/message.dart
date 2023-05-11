import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MessageWidget extends StatefulWidget {
  final String message;
  const MessageWidget({super.key, required this.message});

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  late String message;

  @override
  void initState() {
    super.initState();

    message = widget.message;

    if (kDebugMode) {
      log("The message is: $message");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}
