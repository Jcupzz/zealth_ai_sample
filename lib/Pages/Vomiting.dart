import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealth_ai_sample/Static/RadioGroupModel.dart';

class Fatigue extends StatefulWidget {
  @override
  _FatigueState createState() => _FatigueState();
}

class _FatigueState extends State<Fatigue> {
  String radioItem = 'Able to do most activities';
  int id = 1;
  List<RadioList> RList = [
    RadioList(name: "Able to do most activities", index: 1,icon:"assets/icons/yellow.svg"),
    RadioList(name: "In bed less than 50% of the day", index: 2,icon: "assets/icons/orange.svg"),
    RadioList(name: "In bed more than 50% of the day", index: 3,icon: "assets/icons/red.svg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
              onPressed: () => Navigator.pop(context),
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5,0,0,0),
              child: Text(
                "More about Fatigue",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            SizedBox(height: 16,),
            Card(
              color: Colors.white,
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Column(
                  children: RList.map((data) => RadioListTile(
                      activeColor: Color(0xffFF902A),
                      title: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(data.icon),
                          Text("  "+data.name,style: Theme.of(context).textTheme.subtitle1,),
                        ],
                      ),
                      value: data.index,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioItem = data.name;
                          id = data.index;
                        });
                      })).toList()),
            ),
            SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Any medication / Comments',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      SizedBox(height: 16,),
                      TextField(
                        decoration: InputDecoration(
                            hintText: '  Comment',
                            hintStyle: Theme.of(context).textTheme.subtitle1.copyWith(color: Color(0xffA5B2BE)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),

                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
