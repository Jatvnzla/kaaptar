import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCkmsLvhtIP9LkqX1-aoHTq7dJPIov6-Tg",
            authDomain: "kptarapp-32f10.firebaseapp.com",
            projectId: "kptarapp-32f10",
            storageBucket: "kptarapp-32f10.appspot.com",
            messagingSenderId: "264826102786",
            appId: "1:264826102786:web:03aa99269dede0c338f31b"));
  } else {
    await Firebase.initializeApp();
  }
}
