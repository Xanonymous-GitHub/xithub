import 'dart:async';
import 'package:flutter/material.dart';
import 'package:xithub/app.dart';

void main() {
  runZoned(() {
    runApp(
      FlutterReduxApp(),
    );
  }, onError: (Object obj, StackTrace stack) {
    print(obj);
    print(stack);
  });
}
