// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyDDNMSq6_Lsj9IM9rYoZQfZP6fiwscpJc4',
    appId: '1:331563472689:web:aa1fc6bb0a257d7a65c210',
    messagingSenderId: '331563472689',
    projectId: 'flutter-final-924cf',
    authDomain: 'flutter-final-924cf.firebaseapp.com',
    storageBucket: 'flutter-final-924cf.firebasestorage.app',
    measurementId: 'G-3FFKXH650G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBBvx2TtUkEgpSpS5ep5EFzq3dQ9gh1mak',
    appId: '1:331563472689:android:f5891637a93693bb65c210',
    messagingSenderId: '331563472689',
    projectId: 'flutter-final-924cf',
    storageBucket: 'flutter-final-924cf.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAN8YcaW4n1pwF8qrM2n1Yf8dMMjQrN1fc',
    appId: '1:331563472689:ios:c8fce6e6fba2941065c210',
    messagingSenderId: '331563472689',
    projectId: 'flutter-final-924cf',
    storageBucket: 'flutter-final-924cf.firebasestorage.app',
    iosBundleId: 'com.example.foodholycApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAN8YcaW4n1pwF8qrM2n1Yf8dMMjQrN1fc',
    appId: '1:331563472689:ios:c8fce6e6fba2941065c210',
    messagingSenderId: '331563472689',
    projectId: 'flutter-final-924cf',
    storageBucket: 'flutter-final-924cf.firebasestorage.app',
    iosBundleId: 'com.example.foodholycApp',
  );
}
