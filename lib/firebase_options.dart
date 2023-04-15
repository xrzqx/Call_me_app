// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA2onfolH00Q54jUMSsKDyoDBOGrIsYlXY',
    appId: '1:287127504972:web:b1e84a18f2f0d559f3cce9',
    messagingSenderId: '287127504972',
    projectId: 'call-me-a165b',
    authDomain: 'call-me-a165b.firebaseapp.com',
    storageBucket: 'call-me-a165b.appspot.com',
    measurementId: 'G-1PN0E4PWF3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmYpwW2uXBO2Ipp2iu5HfsdD32bT4EJpA',
    appId: '1:287127504972:android:d08515026c5a549df3cce9',
    messagingSenderId: '287127504972',
    projectId: 'call-me-a165b',
    storageBucket: 'call-me-a165b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBE252ynEzihjm9Det2ZfYkM32V81e5k58',
    appId: '1:287127504972:ios:eca736fa1339dcbcf3cce9',
    messagingSenderId: '287127504972',
    projectId: 'call-me-a165b',
    storageBucket: 'call-me-a165b.appspot.com',
    iosClientId: '287127504972-4khpofj5e2h399tm74co4ess28pv6vhk.apps.googleusercontent.com',
    iosBundleId: 'com.example.callMe',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBE252ynEzihjm9Det2ZfYkM32V81e5k58',
    appId: '1:287127504972:ios:eca736fa1339dcbcf3cce9',
    messagingSenderId: '287127504972',
    projectId: 'call-me-a165b',
    storageBucket: 'call-me-a165b.appspot.com',
    iosClientId: '287127504972-4khpofj5e2h399tm74co4ess28pv6vhk.apps.googleusercontent.com',
    iosBundleId: 'com.example.callMe',
  );
}
