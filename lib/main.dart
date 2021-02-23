import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

import './configuration/typography.dart';
import 'views/onboard_screen/onboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Quran Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        scaffoldBackgroundColor: whiteColor,
        fontFamily: GoogleFonts.varela().fontFamily,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: blackColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            color: secondaryColor,
            fontSize: 16,
          ),
          subtitle2: TextStyle(
            color: whiteColor,
            fontSize: 16,
          ),
        ),
        appBarTheme: AppBarTheme(
          color: whiteColor,
          elevation: 0,
        ),
        primaryIconTheme: IconThemeData(
          color: secondaryColor,
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnBoardScreen(),
    );
  }
}
