import 'package:flutter/material.dart';

class Backgroundimage extends StatelessWidget {
  const Backgroundimage({
    Key? key, required double width, required Type child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(colors: [Colors.black,Colors.black12],
      begin: Alignment.bottomCenter,
      end: Alignment.center,).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Color.fromARGB(255, 188, 57, 52), BlendMode.darken)
          )
        ),
      ),
    );
  }
}