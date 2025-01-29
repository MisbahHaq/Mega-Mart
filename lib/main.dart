import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:megamart/OnBoarding/login.dart';
import 'package:megamart/OnBoarding/splash.dart';
import 'package:megamart/Pages/profile.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      // options: FirebaseOptions(
      //   apiKey: "AIzaSyBA_aureSlJHC9PjrKdiOJVgkPM_4oUFzE",
      //   authDomain: "mega-mart-30566.firebaseapp.com",
      //   projectId: "mega-mart-30566",
      //   storageBucket: "mega-mart-30566.firebasestorage.app",
      //   messagingSenderId: "1094641258892",
      //   appId: "1:1094641258892:web:b64513308bed5422e386a9",
      //   measurementId: "G-NTDPQD4PG2",
      // ),
      );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
