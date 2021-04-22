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
          display3: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600, height: 40),
          headline1: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w500, height: 34),
          headline2: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500, height: 30),
          headline3: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500, height: 28),
          headline4: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, height: 26),
          headline5: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500, height: 24),
          headline6: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, height: 22),
          bodyText1: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w400, height: 30),
          bodyText2: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w400, height: 26),
          subtitle1: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, height: 24),
          subtitle2:GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w400, height: 22),
        ),
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
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Symptoms",style: Theme.of(context).textTheme.bodyText2,),
      ),
      drawer: Drawer(
        child: Icon(Icons.menu),
      ),
      
    );
  }
}
