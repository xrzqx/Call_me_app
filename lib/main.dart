import 'package:call_me/constants.dart';
import 'package:call_me/screen/dasboard/dashboard.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

import 'login.dart';

late final FirebaseApp app;
late final FirebaseAuth auth;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  auth = FirebaseAuth.instanceFor(app: app);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // final authC = Get.put(Auth(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: auth.authStateChanges(),
      builder: (context, snapshot) {
        // print(snapshot);
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            // FirebaseAuth.instance.authStateChanges().listen((User? user) async {
            //     await user!.reload();
            //     user = await auth.currentUser;
                print("===================================");
            //     // print(user);
            //   });
            // print(user);
            return Dashboard();
            // if (snapshot.data!.displayName == null) {

            // }
            // if (snapshot.data!.displayName == null) {
            //   FirebaseAuth.instance.authStateChanges().listen((User? user) async {
            //     await user!.reload();
            //     user = await auth.currentUser;
            //     print("===================================");
            //     print(user);
            //     });
            //   print(snapshot);
            //   return const Dashboard();
            // }
            // else{
            //   return const Dashboard();
            // }
          }
          return const LoginPage();
        };
        return const LoadingView();
      }
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
