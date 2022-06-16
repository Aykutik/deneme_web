import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

import '../header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double eY = ekranBilgisi.size.height;
    final double eG = ekranBilgisi.size.width;
    return Scaffold(
      body: Container(
        height: eY,
        width: eG,
        child: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    Transform(
                      transform: Matrix4.rotationZ(pi / 5.5)
                        ..translate(-10.0, -160.0),
                      child: Container(
                          height: eG / 4,
                          width: eY / 1.3,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(400.0))),
                    ),
                    Positioned(
                        top: 200.0,
                        left: 100.0,
                        child: Container(
                          height: 400.0,
                          width: 400.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Tüm bilgileriniz bir yerde")],
                          ),
                        ))
                  ],
                ),
                Header()
              ],
            )
          ],
        )),
      ),
    );
  }
}
