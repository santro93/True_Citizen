import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/ui/home.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      color: Colors.amber,
    ),
    accentColor: Colors.amber,
    primaryColor: Color.fromARGB(255, 24, 121, 27),
    scaffoldBackgroundColor: Colors.green,
    backgroundColor: Colors.amber,
 
    textTheme: _appTextTheme(base.textTheme));
    //  );
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline2: base.headline2?.copyWith(
          fontWeight: FontWeight.w600,
        ),
        titleLarge: base.titleLarge?.copyWith(fontSize: 22.0),
        button: base.button!.copyWith(
          letterSpacing: 3.0,
          fontSize: 15.0,
          backgroundColor: Colors.red,
        ),
        caption:
            base.caption?.copyWith(fontWeight: FontWeight.w600, fontSize: 22.0),
        bodyText2: base.bodyText2!.copyWith(
          fontFamily: "Trispace",
          fontSize: 16.9,
          color: Colors.amberAccent,
        ),
      )
      .apply(
        fontFamily: "Trispace",

        displayColor: Colors.amberAccent,
        bodyColor: Colors.black,
      );
}

void main() {
  //runApp(MyApp());
  runApp(new MaterialApp(
    theme: _appTheme,
    home: QuizApp(),

    // theme: ThemeData(
    //     scaffoldBackgroundColor: Colors.green,
    //     //  shadowColor: Colors.amberAccent,
    //     //   brightness: Brightness.light,
    //     primaryColor: Colors.red,
    //     textTheme: TextTheme(
    //       headline2: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    //       bodyText2: TextStyle(
    //         fontSize: 30.9,
    //         color: Colors.amberAccent,
    //       ),
    //     )),
  ));
}
