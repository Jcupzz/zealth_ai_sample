import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zealth_ai_sample/Pages/Fatigue.dart';
import 'package:zealth_ai_sample/Pages/Vomiting.dart';
import 'package:zealth_ai_sample/Static/InputChipData.dart';
import 'package:zealth_ai_sample/Static/InputChips.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  bool isSelected = false;
  List<InputChipData> inputChips = InputChips.all;
  bool isFatigueOnceSelected = false;
  bool isVomitingOnceSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          style: Theme
              .of(context)
              .textTheme
              .bodyText2,
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
                style: Theme
                    .of(context)
                    .textTheme
                    .headline5,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(color: Color(0xffA5B2BE)),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 48,
                child: isSelected
                    ? Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildInputChips(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,10,0),
                          child: Container(
                            height: 22,
                            child: ElevatedButton(
                              onPressed: () {
                                if(inputChips.isNotEmpty) {
                                  if(isFatigueOnceSelected){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Fatigue()));
                                  }else if(isVomitingOnceSelected){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Vomiting()));
                                  }
                                  else{
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Fatigue()));
                                  }
                                }
                              },
                              child: Text('Check',
                                  style: GoogleFonts.poppins(
                                      fontSize: 11, color: Color(0xffFF0270), fontWeight: FontWeight.w500)),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                primary: Color(0xffFFE9E4),
                                elevation: 0,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                    : Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: IconButton(
                          icon: SvgPicture.asset("assets/icons/search.svg"),
                          onPressed: () {},
                          color: Colors.black,
                          iconSize: 20),
                    ),
                    Flexible(
                      flex: 5,
                      child: TextField(
                        style: TextStyle(decoration: TextDecoration.none),
                        decoration: InputDecoration.collapsed(
                          hintText: "Search symptoms",
                          hintStyle: Theme
                              .of(context)
                              .textTheme
                              .subtitle2,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 4,
                        child: Container(
                          height: 22,
                          child:  ElevatedButton(
                            onPressed: () {},
                            child: Text('Check',
                                style: GoogleFonts.poppins(
                                    fontSize: 11, color: Color(0xffA5B2BE), fontWeight: FontWeight.w500)),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              primary: Color(0xffEAEFF4),
                              elevation: 0,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Suggested symptoms',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 11, color: Colors.black),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 76,
                      height: 104,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSelected = true;
                            if (!isFatigueOnceSelected) {
                              inputChips.add(InputChipData(
                                label: 'Fatigue',
                                urlAvatar: 'assets/icons/fatigue.png',
                              ));
                              isFatigueOnceSelected = true;
                            }
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset("assets/icons/fatigue.svg"),
                            Text(
                              'Fatigue',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 11, color: Colors.black),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(elevation: 0, primary: Colors.white),
                      )),
                  Container(
                      width: 76,
                      height: 104,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isSelected = true;
                            if (!isVomitingOnceSelected) {
                              inputChips.add(InputChipData(
                                label: 'Vomiting',
                                urlAvatar: 'assets/icons/vomitting.png',
                              ));
                              isVomitingOnceSelected = true;
                            }
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/icons/vomitting.png"),
                            Text(
                              'Vomiting',
                              style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 11, color: Colors.black),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(elevation: 0, primary: Colors.white),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInputChips() =>
      Wrap(
        runSpacing: 0,
        spacing: 5,
        children: inputChips
            .map((inputChip) =>
            InputChip(
              avatar: Image.asset(inputChip.urlAvatar),
              label: Text(inputChip.label),
              labelStyle: Theme
                  .of(context)
                  .textTheme
                  .subtitle2,
              backgroundColor: Colors.white,
              deleteIconColor: Colors.grey[400],
              onPressed: () {},
              onDeleted: () =>
                  setState(() {
                    inputChips.remove(inputChip);
                    if(inputChips.isEmpty){
                      isSelected = false;
                    }
                    if(inputChip.label=='Fatigue'){
                        isFatigueOnceSelected = false;
                      }
                      else{
                        isVomitingOnceSelected = false;
                      }
                  }),
            ))
            .toList(),
      );
}
