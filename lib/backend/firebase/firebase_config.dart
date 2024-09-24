import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA9a2O4dAy4OjpkdTnk-CcYAGk1S58T3Wc",
            authDomain: "todo-s702u6.firebaseapp.com",
            projectId: "todo-s702u6",
            storageBucket: "todo-s702u6.appspot.com",
            messagingSenderId: "157750997376",
            appId: "1:157750997376:web:07a8e8df3c8c0fb91e1165"));
  } else {
    await Firebase.initializeApp();
  }
}
