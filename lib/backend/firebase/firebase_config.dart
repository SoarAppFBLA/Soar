import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCmc35EefVoeeouSgsg8y7WCiq4QqysHaI",
            authDomain: "to-do-rdnmlu.firebaseapp.com",
            projectId: "to-do-rdnmlu",
            storageBucket: "to-do-rdnmlu.appspot.com",
            messagingSenderId: "99613549407",
            appId: "1:99613549407:web:d154f296834a69f4780cea"));
  } else {
    await Firebase.initializeApp();
  }
}
