import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealth_ai_sample/Pages/Vomiting.dart';
import 'package:zealth_ai_sample/Static/Post.dart';
import 'package:zealth_ai_sample/Static/RadioGroupModel.dart';
import 'package:zealth_ai_sample/main.dart';
import 'package:http/http.dart' as http;


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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffA5B2BE)
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              // child: RichText(
                              //   text: TextSpan(style: Theme.of(context).textTheme.headline5, children: [
                              //     WidgetSpan(
                              //         child: Icon(
                              //           Icons.arrow_back_rounded,
                              //           size: 22,
                              //         ),
                              //         alignment: PlaceholderAlignment.middle),
                              //     TextSpan(text: ' Previous'),
                              //   ]),
                              // ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.arrow_back_rounded,size: 18,),
                                  Text('Previous',style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: isBothSelected?ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Color(0xff51C185)),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder:(_)=>Vomiting()));
                                },
                                child: Text(
                                  'Next',
                                  style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
                                )):ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Color(0xff51C185)),
                                onPressed: () async{


                                  // // Post newPost = new Post(
                                  // //     userId: "123", body: 'HI');
                                  // // Post p = await createPost('https://localhost:8080',
                                  // //     body: newPost.toMap());
                                  // // print(p.body);
                                  // final Post newpost = await sendFruit('userId', 'vfList');
                                  // print(newpost.userId);

                                },
                                child: Text(
                                  'Update',
                                  style: Theme.of(context).textTheme.headline5.copyWith(color: Colors.white),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }


  Future<Post> createPost(

      String userId, String vfList) async {
    final http.Response response = await http.post(
      Uri.parse('https://192.168.1.38'),
      headers: {
        "Access-Control-Allow-Origin": "*", // Required for CORS support to work
        "Access-Control-Allow-Credentials": "true", // Required for cookies, authorization headers with HTTPS
        "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
        "Access-Control-Allow-Methods": "POST, OPTIONS"
      },
      body: jsonEncode(<String, String> {
        'user-id': userId,
        'symptoms':vfList,
      }),
    );
    if (response.statusCode == 200) {
      return Post.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }


}
