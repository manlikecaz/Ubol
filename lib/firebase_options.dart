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
        return windows;
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
    apiKey: 'AIzaSyB0ycmQzq_h8ns9UCBG7UEDm-RX9ONxjDo',
    appId: '1:743124688435:web:1b3b20f9fd2006c2dc0d46',
    messagingSenderId: '743124688435',
    projectId: 'ubol-d8dd1',
    authDomain: 'ubol-d8dd1.firebaseapp.com',
    storageBucket: 'ubol-d8dd1.appspot.com',
    measurementId: 'G-ZF7JQ2L412',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDakk58-NeLBIKFOJdoQJc3j8JNj7EkDg',
    appId: '1:743124688435:android:ea571268fdba3b21dc0d46',
    messagingSenderId: '743124688435',
    projectId: 'ubol-d8dd1',
    storageBucket: 'ubol-d8dd1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlb0AfniUkx-QnOdPC0SKnSFsWrrI7ELQ',
    appId: '1:743124688435:ios:2917d53e3d8b4458dc0d46',
    messagingSenderId: '743124688435',
    projectId: 'ubol-d8dd1',
    storageBucket: 'ubol-d8dd1.appspot.com',
    iosBundleId: 'com.example.ubol',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBlb0AfniUkx-QnOdPC0SKnSFsWrrI7ELQ',
    appId: '1:743124688435:ios:2917d53e3d8b4458dc0d46',
    messagingSenderId: '743124688435',
    projectId: 'ubol-d8dd1',
    storageBucket: 'ubol-d8dd1.appspot.com',
    iosBundleId: 'com.example.ubol',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB0ycmQzq_h8ns9UCBG7UEDm-RX9ONxjDo',
    appId: '1:743124688435:web:674fc9effc22acacdc0d46',
    messagingSenderId: '743124688435',
    projectId: 'ubol-d8dd1',
    authDomain: 'ubol-d8dd1.firebaseapp.com',
    storageBucket: 'ubol-d8dd1.appspot.com',
    measurementId: 'G-MW94XL6RY6',
  );
}
