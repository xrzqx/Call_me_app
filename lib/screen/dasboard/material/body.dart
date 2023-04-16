import 'dart:collection';

import 'package:call_me/constants.dart';
import 'package:call_me/screen/showprofile/showprofile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

Widget getUserWidgets(Map<String, dynamic>? listUser, BuildContext context)
{
  List<Widget> list = <Widget>[];
  listUser!.forEach((key, value) { 
    list.add(contactHeader(alphabet: key));
    value.forEach((key, value){
      list.add(ListBox(nama: value["name"], press: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShowProfile(name:value["name"],email: value["email"]),
          ),
        );
      }));
    });
  });
  return new Column(children: list);
}

Future<Map<dynamic, dynamic>?> checkData() async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  final Map<String, dynamic> listUser = <String, dynamic>{};
  await db.collection("Users").get().then((event) {
    for (var doc in event.docs) {
      listUser.addAll({doc.id: doc.data()});
    }
  });
  return listUser;
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: checkData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          Size size = MediaQuery.of(context).size;
          return SingleChildScrollView(
            child: Column(
              children: [
                getUserWidgets(snapshot.data!.cast<String, dynamic>(), context),
              ]
            )
          );
        }
        return Container();
      }
    );
  }
}

class contactHeader extends StatelessWidget {
  final String alphabet;
  const contactHeader({super.key, required this.alphabet});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
          // bottom: 6,
        ),
        height: size.height * 0.04,
        decoration: BoxDecoration(
          color: Color(0x99C4C4C4),
        ),
        child: Container(
          // height: size.height * 0.03,
          margin: EdgeInsets.only(
            left: kDefaultMargin,
          ),
          child: Row(
            children: [
              Text(
                "$alphabet".toUpperCase(),
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class ListBox extends StatelessWidget {
  const ListBox({
    // Key key,
    required this.nama,
    required this.press,
  }) ;
  // : super(key: key);

  final String nama;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.04,
      child: GestureDetector(
        onTap: () => {press()},
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              // height: size.height * 0.03,
              padding: EdgeInsets.only(
                top: kDefaultMargin*0.5,
                bottom: kDefaultMargin*0.5,
                left: kDefaultMargin,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "$nama",
                  style: TextStyle(fontSize: 24,),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
