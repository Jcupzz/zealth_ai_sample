import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            display1: GoogleFonts.poppins(fontSize: 48, fontWeight: FontWeight.w600, height: 58),
            display2: GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w600, height: 46),
            display3: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600, height: 40)),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
