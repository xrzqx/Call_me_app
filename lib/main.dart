import 'package:call_me/constants.dart';
import 'package:call_me/login.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final routes = <String, WidgetBuilder>{
  //   // LoginPage.tag: (context) => LoginPage(),
  // };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: <String, WidgetBuilder>{
      //   '/login': (context) => LoginPage(),
      // },
      // initialRoute: "/",
      // routes: {'/': (context) => LoginPage()},
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
        bottomNavigationBar: Btmnav(),
      ),
    );
  }
}
