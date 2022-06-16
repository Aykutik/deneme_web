import 'package:deneme_web/Screens/Home/home_screen.dart';
import 'package:deneme_web/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Personel Programı',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
        home: HomeScreen());
  }
}
