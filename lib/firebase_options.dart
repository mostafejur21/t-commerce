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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD38ykweLd5pfA41LKlPhGDlgQ-bVQ0PsE',
    appId: '1:33828580843:web:be96b54ce3861afe3d7dae',
    messagingSenderId: '33828580843',
    projectId: 'ecommerceapp-c6eca',
    authDomain: 'ecommerceapp-c6eca.firebaseapp.com',
    storageBucket: 'ecommerceapp-c6eca.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCeuIV1pYjizSvqCLsDs2-12jpjxFbcfuo',
    appId: '1:33828580843:android:944d5acc9b2d22423d7dae',
    messagingSenderId: '33828580843',
    projectId: 'ecommerceapp-c6eca',
    storageBucket: 'ecommerceapp-c6eca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBu73Kuk_osh5MiKkr67NLVG8_Q1vwAAaI',
    appId: '1:33828580843:ios:c53af5f1c4713dc53d7dae',
    messagingSenderId: '33828580843',
    projectId: 'ecommerceapp-c6eca',
    storageBucket: 'ecommerceapp-c6eca.appspot.com',
    androidClientId: '33828580843-bookek65ssdgp338lqhihoh71mq1m4m9.apps.googleusercontent.com',
    iosClientId: '33828580843-pmg0tj2pk8rlvibsf8386kbcj3l84bk6.apps.googleusercontent.com',
    iosBundleId: 'com.example.tEcommerce',
  );
}
