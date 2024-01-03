import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB2LCajfgG5ieZLezwCXuqDkvv5qeQNzfA",
            authDomain: "instaflor-23bc3.firebaseapp.com",
            projectId: "instaflor-23bc3",
            storageBucket: "instaflor-23bc3.appspot.com",
            messagingSenderId: "992021104583",
            appId: "1:992021104583:web:1010b705829553cd3f3be2"));
  } else {
    await Firebase.initializeApp();
  }
}
