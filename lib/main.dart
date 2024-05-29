import  'package:flutter/material.dart';
import 'package:job/screens/LoginPage.dart';
import 'package:job/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}