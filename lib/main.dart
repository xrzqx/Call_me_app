import 'package:call_me/constants.dart';
import 'package:call_me/fire_auth.dart';
import 'package:call_me/screen/dasboard/dashboard.dart';
import 'package:call_me/screen/register/screen%201/register.dart';
import 'package:call_me/screen/register/screen%202/register.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

import 'login.dart';

late final FirebaseApp app;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  // runApp(MaterialApp(
  //     // title: "App",
  //     home: const MyApp(),
    //   theme: ThemeData(
    //     primaryColor: kPrimaryColor,
    //     appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
    //   )
    // ));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.userChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            if (snapshot.data!.displayName != null) {
              print(snapshot.data);
              return const DashboardPage();
            }
            else{
              return const LoadingView();
            }
            // return const Dashboard();
          }
          return const LoginPage();
        }else{
          return const LoadingView();
        }
      }
    );
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
    );

  }
}
