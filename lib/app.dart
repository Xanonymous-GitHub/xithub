import 'package:flutter/material.dart';
import 'package:xithub/pages/home.dart';

class FlutterReduxApp extends StatefulWidget {
  @override
  _FlutterReduxAppState createState() => _FlutterReduxAppState();
}

class _FlutterReduxAppState extends State<FlutterReduxApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.sName: (context) {
          return HomePage();
        },
      },
    );
  }
}
