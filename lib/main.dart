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
        textTheme: ,
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
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Symptoms", style:GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 16)),
      ),
      drawer: Drawer(
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text("Search & Add Your Symptoms",style: GoogleFonts.poppins(),)
          ],
        ),
      ),

    );
  }
}
