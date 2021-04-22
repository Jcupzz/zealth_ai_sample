import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zealth_ai_sample/App.dart';
import 'package:zealth_ai_sample/MyBottomNavigationBar.dart';
import 'package:zealth_ai_sample/Pages/Home.dart';
import 'package:zealth_ai_sample/Pages/Medication.dart';
import 'package:zealth_ai_sample/Pages/Reports.dart';
bool isBothSelected = false;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          // display1: GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.w600, height: 58),
          // display2: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w600, height: 46),
          // display3: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600, height: 40),
          headline1: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
          headline2: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
          headline3: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          headline4: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          headline5: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
          headline6: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
          bodyText1: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
          bodyText2: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
          subtitle1: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          subtitle2: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        primarySwatch: Colors.blue,
      ),
      home: App());
  }
}

