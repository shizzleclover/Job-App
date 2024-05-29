import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'LoginPage.dart';  

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF80A1F5),  
              Color(0xFF1F3F8E),  
            ],
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            'Assets/Images/Logo.svg',
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
