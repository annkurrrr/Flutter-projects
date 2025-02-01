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
    apiKey: 'AIzaSyAXipJ2GF2Gbze88PCXegazUr7Qg76FVbg',
    appId: '1:342843598336:web:4d4be8096e926971575ae5',
    messagingSenderId: '342843598336',
    projectId: 'crud-e9956',
    authDomain: 'crud-e9956.firebaseapp.com',
    storageBucket: 'crud-e9956.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBlIMchn9QKIhNC_PX2iVd3JDr8JiXjx_Q',
    appId: '1:342843598336:android:267397faae99418d575ae5',
    messagingSenderId: '342843598336',
    projectId: 'crud-e9956',
    storageBucket: 'crud-e9956.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6krJsiaAhWjlcbA_vSllkXBCmU3gn4tg',
    appId: '1:342843598336:ios:28a32f4b840b7fe1575ae5',
    messagingSenderId: '342843598336',
    projectId: 'crud-e9956',
    storageBucket: 'crud-e9956.firebasestorage.app',
    iosBundleId: 'com.example.crud',
  );
}
