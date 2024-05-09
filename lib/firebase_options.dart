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
    apiKey: 'AIzaSyAfxVDDjbR_lyIRWjgCUYvic0g8cgWxDLA',
    appId: '1:972417070471:web:d6578905c6609090524f22',
    messagingSenderId: '972417070471',
    projectId: 'signup-1c78b',
    authDomain: 'signup-1c78b.firebaseapp.com',
    storageBucket: 'signup-1c78b.appspot.com',
    //measurementId: '972417070471',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAfxVDDjbR_lyIRWjgCUYvic0g8cgWxDLA',
    appId: '1:972417070471:web:d6578905c6609090524f22',
    messagingSenderId: '972417070471',
    projectId: 'signup-1c78b',
    storageBucket: 'signup-1c78b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfxVDDjbR_lyIRWjgCUYvic0g8cgWxDLA',
    appId: '1:972417070471:web:d6578905c6609090524f22',
    messagingSenderId: '972417070471',
    projectId: 'signup-1c78b',
    storageBucket: 'signup-1c78b.appspot.com',
    androidClientId:
        '972417070471-fir1o52dh4ik3vpbf74k1go785dpl4bo.apps.googleusercontent.com',
    iosClientId:
        '972417070471-3bkk67dgerij87fb9k4nbde3qf3b52bm.apps.googleusercontent.com',
    iosBundleId: 'com.signup',
  );
}
