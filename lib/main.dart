import 'package:call_me/screen/dasboard/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

import 'login.dart';

late final FirebaseApp app;
late final FirebaseFirestore firestore;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  firestore = FirebaseFirestore.instanceFor(app: app);
  runApp(const MyApp());
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
              return const DashboardPage();
            }
            else{
              return const LoadingView();
            }
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
