import 'dart:html';

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.light
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      body: Center(
        child: Text('Hello $text',
        style: TextStyle(
          fontSize: 32,
        ),),
      ),
    );
  }
}
