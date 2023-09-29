import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDIofjrqaTNcGyi8unMxOx0-c8LYUba7_s",
            authDomain: "diggyreceipts.firebaseapp.com",
            projectId: "diggyreceipts",
            storageBucket: "diggyreceipts.appspot.com",
            messagingSenderId: "387736893319",
            appId: "1:387736893319:web:1dc8e0fd44791421760522",
            measurementId: "G-XDE5MPCMSG"));
  } else {
    await Firebase.initializeApp();
  }
}
