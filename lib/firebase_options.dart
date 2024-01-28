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
    apiKey: 'AIzaSyDahNTeGmYqqUEdA6NVo7_BMWzCXjERN4A',
    appId: '1:883577425163:web:a1dd3ab96c18da4233660e',
    messagingSenderId: '883577425163',
    projectId: 'leochatapp',
    authDomain: 'leochatapp-97637.firebaseapp.com',
    storageBucket: 'leochatapp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlX8Ar8RJnBQFzT98ZS3C7ri1BVp5Zhbw',
    appId: '1:883577425163:android:523235814a70733f33660e',
    messagingSenderId: '883577425163',
    projectId: 'leochatapp',
    storageBucket: 'leochatapp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdZXdZnmPfdh7LISO5Ra0egfGjsmd2wy0',
    appId: '1:883577425163:ios:9b383e3bb5ff04f733660e',
    messagingSenderId: '883577425163',
    projectId: 'leochatapp',
    storageBucket: 'leochatapp.appspot.com',
    iosBundleId: 'com.example.leoApp',
  );
}