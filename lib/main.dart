import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_quran_apps/views/detail_surah/detail_surah.dart';
import 'package:simple_quran_apps/views/home/home.dart';

import './configuration/typography.dart';
import 'views/onboard_screen/onboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Simple Quran Apps',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/home',
          page: () => Home(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: '/detail-surah',
          page: () => DetailSurah(),
          transition: Transition.cupertino,
        ),
      ],
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        scaffoldBackgroundColor: whiteColor,
        fontFamily: GoogleFonts.varela().fontFamily,
        textTheme: TextTheme(
          headline5: TextStyle(
            color: whiteColor,
            fontWeight: FontWeight.bold,
          ),
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
            fontSize: 14,
          ),
          subtitle2: TextStyle(
            color: whiteColor,
            fontSize: 14,
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