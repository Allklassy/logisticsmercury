import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/unboarding_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: 
            AssetImage('assets/images/splash1,png'),
            fit: BoxFit.cover)
          ),
        )
      ],

      ),

       nextScreen:const UnboardingScreen(),
    );
  }
}