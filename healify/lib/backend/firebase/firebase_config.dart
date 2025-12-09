import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCnGr5APt9Ov270fagd1RLJqNC4S-JtyqQ",
            authDomain: "healifybycambridge.firebaseapp.com",
            projectId: "healifybycambridge",
            storageBucket: "healifybycambridge.appspot.com",
            messagingSenderId: "893479560077",
            appId: "1:893479560077:web:d259b411d4f726755c13c4",
            measurementId: "G-670B10PBJ0"));
  } else {
    await Firebase.initializeApp();
  }
}
