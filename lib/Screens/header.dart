import 'package:flutter/material.dart';
import '../constant.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double eY = ekranBilgisi.size.height;
    final double eG = ekranBilgisi.size.width;
    return Container(
      color: kPrimaryColor,
      height: 75.0,
      width: eG / 1,
      child: Row(children: [
        SizedBox(width: eG / 40),
        Image.asset(
          "images/kiriker_logo.png",
          width: 39,
          height: 39,
        ),
        SizedBox(width: eG / 75),
        Text(kHeaderYazi,
            style: GoogleFonts.nunito(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        SizedBox(width: eG / 1.4),
        Row(
          children: [
            Text(
              "Giriş Yap",
              style: GoogleFonts.nunito(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
