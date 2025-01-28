import 'package:flutter/material.dart';
import 'package:megamart/Constants/bottombar.dart';
import 'package:megamart/Constants/product_detail.dart';
import 'package:megamart/Pages/beveragesPage.dart';
import 'package:megamart/Pages/explorePage.dart';
import 'package:megamart/Pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
