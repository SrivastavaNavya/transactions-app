import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBx01qHN1CCYtFgCNLm2bkNn6eHsR-OXd0',
    appId: '1:184595400107:web:b582ee56eda142211b3eee',
    messagingSenderId: '184595400107',
    projectId: 'banking-mobile-app',
    authDomain: 'banking-mobile-app.firebaseapp.com',
    storageBucket: 'banking-mobile-app.appspot.com',
    measurementId: 'G-SG4XX3VY62',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4XYaYvXVgzRHq8iwVca8Q4S3uOSW0bVg',
    appId: '1:184595400107:android:cb94c94108dd91001b3eee',
    messagingSenderId: '184595400107',
    projectId: 'banking-mobile-app',
    storageBucket: 'banking-mobile-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWz7i6a59W94c1fi4tlGtjWKIq4QrgV8o',
    appId: '1:184595400107:ios:c7402b5dc1ac9b971b3eee',
    messagingSenderId: '184595400107',
    projectId: 'banking-mobile-app',
    storageBucket: 'banking-mobile-app.appspot.com',
    iosClientId:
        '184595400107-5bvpcsqbapnsnb5u6fqrp86kr597hpvu.apps.googleusercontent.com',
    iosBundleId: 'com.example.bankingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWz7i6a59W94c1fi4tlGtjWKIq4QrgV8o',
    appId: '1:184595400107:ios:0621ad3d4de990781b3eee',
    messagingSenderId: '184595400107',
    projectId: 'banking-mobile-app',
    storageBucket: 'banking-mobile-app.appspot.com',
    iosClientId:
        '184595400107-4lqjm0nkionbbpu77l22rohvr84oml5f.apps.googleusercontent.com',
    iosBundleId: 'com.example.bankingApp.RunnerTests',
  );
}
