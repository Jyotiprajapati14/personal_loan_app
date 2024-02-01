import 'package:flutter/material.dart';
import 'package:personal_loan_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
