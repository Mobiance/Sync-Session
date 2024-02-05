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
    apiKey: 'AIzaSyC9uufGqYpbXCC-rXFl39EI2Jp-klry3uk',
    appId: '1:886573520405:web:1bc27510cee54aae22201c',
    messagingSenderId: '886573520405',
    projectId: 'sync-session',
    authDomain: 'sync-session.firebaseapp.com',
    storageBucket: 'sync-session.appspot.com',
    measurementId: 'G-WDVRF8JBLR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWGybw_gDVNfF28ZiPyZKWN_0ZvK4UZ-M',
    appId: '1:886573520405:android:4c67897fbc2440a122201c',
    messagingSenderId: '886573520405',
    projectId: 'sync-session',
    storageBucket: 'sync-session.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDS2V6zbQD-Nt7q-XUypUZJr8spfYfIkNU',
    appId: '1:886573520405:ios:ea1e0c0f7bf9442822201c',
    messagingSenderId: '886573520405',
    projectId: 'sync-session',
    storageBucket: 'sync-session.appspot.com',
    androidClientId: '886573520405-jrcgobcnamqt3i825c9dpjr50avphmff.apps.googleusercontent.com',
    iosClientId: '886573520405-o7qjmsr1r2oa1uo5vfccjj1k1n0is7b6.apps.googleusercontent.com',
    iosBundleId: 'com.example.syncSession',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDS2V6zbQD-Nt7q-XUypUZJr8spfYfIkNU',
    appId: '1:886573520405:ios:fbf7fbe241fb9de122201c',
    messagingSenderId: '886573520405',
    projectId: 'sync-session',
    storageBucket: 'sync-session.appspot.com',
    androidClientId: '886573520405-jrcgobcnamqt3i825c9dpjr50avphmff.apps.googleusercontent.com',
    iosClientId: '886573520405-1f9o85bd2qtbqm79a2llv7d37ssaup76.apps.googleusercontent.com',
    iosBundleId: 'com.example.syncSession.RunnerTests',
  );
}
