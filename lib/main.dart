
import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/splash.dart';

// ignore: unused_import
import 'package:logisticsapp/screens/unboarding_screen.dart';

void main() {
  runApp(const Delcity());
}

class Delcity extends StatefulWidget {
  const Delcity({super.key});

  @override
  State<Delcity> createState() => _MyAppState();
}

class _MyAppState extends State<Delcity> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoginPage',
      
      home: SplashScreen(),
    );

  }
}