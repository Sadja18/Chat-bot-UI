import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<dynamic> generateResponse(String query) async {
  try {
    Future.delayed(const Duration(seconds: 1));
    return "Response is this";
  } catch (e) {
    if (kDebugMode) {
      log("error occurred");
      log(e.toString());
      // log(e.me)
    }
    return "Cannot generate response";
  }
}
