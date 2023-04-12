import 'package:call_me/constants.dart';
import 'package:call_me/main.dart';
import 'package:call_me/screen/dasboard/material/ListViewDrawer.dart';
import 'package:call_me/screen/dasboard/material/body.dart';
import 'package:call_me/screen/search/search.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

FirebaseAuth auth = FirebaseAuth.instance;

// Future<User?> refreshUser(User user) async {
//   FirebaseAuth auth = FirebaseAuth.instance;

//   await user.reload();
//   User? refreshedUser = auth.currentUser;

//   return refreshedUser;
// }

class Dashboard extends StatelessWidget {
  // User? user;
  // Dashboard({this.user});
  // const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // print(user);
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: ListDrawer(user: auth.currentUser),
        appBar: AppBar(
          // backgroundColor: kPrimaryColor,
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
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Search(),
                //   ),
                // );
              },
            )
          ],
        ),
        body: Body(),
      ),
    );

  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
