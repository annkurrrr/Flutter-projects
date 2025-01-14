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
    apiKey: 'AIzaSyArPK-hsL2_Ou0wwDI-xaclxmysm57QpdQ',
    appId: '1:211431880337:web:bd43f743b9790a55ca7130',
    messagingSenderId: '211431880337',
    projectId: 'mytasks-flutter-project',
    authDomain: 'mytasks-flutter-project.firebaseapp.com',
    storageBucket: 'mytasks-flutter-project.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAVbQOKCVW3Q1yRmzrThrVoJhia_ZSwlsE',
    appId: '1:211431880337:android:c432495c7a268aaeca7130',
    messagingSenderId: '211431880337',
    projectId: 'mytasks-flutter-project',
    storageBucket: 'mytasks-flutter-project.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTybAqVWaE7nTETdWBhtsJTD2Hoxc6r78',
    appId: '1:211431880337:ios:d9b0c19ad857866fca7130',
    messagingSenderId: '211431880337',
    projectId: 'mytasks-flutter-project',
    storageBucket: 'mytasks-flutter-project.firebasestorage.app',
    iosBundleId: 'com.example.tasks',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDTybAqVWaE7nTETdWBhtsJTD2Hoxc6r78',
    appId: '1:211431880337:ios:d9b0c19ad857866fca7130',
    messagingSenderId: '211431880337',
    projectId: 'mytasks-flutter-project',
    storageBucket: 'mytasks-flutter-project.firebasestorage.app',
    iosBundleId: 'com.example.tasks',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyArPK-hsL2_Ou0wwDI-xaclxmysm57QpdQ',
    appId: '1:211431880337:web:bcc70098d16c7d99ca7130',
    messagingSenderId: '211431880337',
    projectId: 'mytasks-flutter-project',
    authDomain: 'mytasks-flutter-project.firebaseapp.com',
    storageBucket: 'mytasks-flutter-project.firebasestorage.app',
  );
}
