import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset("assets/icons/menu.svg"),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Symptoms",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Search & Add Your Symptoms",
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Color(0xffA5B2BE)),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                height: 48,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: IconButton(
                          icon: SvgPicture.asset("assets/icons/search.svg"), onPressed: () {}, color: Colors.black, iconSize: 20),
                    ),
                    Flexible(
                      flex: 5,
                      child: TextField(
                        style: TextStyle(decoration: TextDecoration.none),
                        decoration: InputDecoration.collapsed(
                          hintText: "Search symptoms",
                          hintStyle: Theme.of(context).textTheme.subtitle2,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 4,
                        child: Container(
                          height: 22,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Check',
                                style: GoogleFonts.poppins(fontSize: 11, color: Color(0xffFF0270), fontWeight: FontWeight.w500)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              primary: Color(0xffffecec),
                              elevation: 0,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              ElevatedButton(onPressed: () {}, child: SvgPicture.asset("assets/icons/fatigue.svg")),
            ],
          ),
        ),
      ),
    );
  }
}
