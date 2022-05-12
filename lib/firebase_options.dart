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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC2Gd6BjE2RC9ULSP92Uo-Vew53MVpaeLw',
    appId: '1:506145888907:android:55f1d55a8f74bbf898928e',
    messagingSenderId: '506145888907',
    projectId: 'kehadiranmu-8ee13',
    storageBucket: 'kehadiranmu-8ee13.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyArtgim1g5T-w7SjtvZgFHEsV2oQg7OI_A',
    appId: '1:506145888907:ios:a521bb8f6726af1c98928e',
    messagingSenderId: '506145888907',
    projectId: 'kehadiranmu-8ee13',
    storageBucket: 'kehadiranmu-8ee13.appspot.com',
    iosClientId: '506145888907-85ctpvq0vle82h6cg0mnbabihb345to7.apps.googleusercontent.com',
    iosBundleId: 'com.findwilly.kehadiranmu',
  );
}
