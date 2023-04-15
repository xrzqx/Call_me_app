import 'package:call_me/screen/dasboard/material/ListViewDrawer.dart';
import 'package:call_me/screen/dasboard/material/body.dart';
import 'package:call_me/screen/search/search.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

Future<void> checkData() async {
  FirebaseFirestore db = FirebaseFirestore.instance;
  await db.collection("Users").get().then((event) {
  for (var doc in event.docs) {
    print("${doc.id} => ${doc.data()}");
  }
});
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // checkData();
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
      ),
      home: Dashboard()
      );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Colors.white,
            drawer: ListDrawer(user: FirebaseAuth.instance.currentUser),
            appBar: AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              centerTitle: true,
              title: SvgPicture.asset("assets/icons/logo.svg"),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Search(),
                      ),
                    );
                    
                  },
                )
              ],
            ),
            body: Body(),
          );

  }
}

