// import 'package:flutter/material.dart';
// class imagecontainer extends StatelessWidget {
//   const imagecontainer({
//     Key? key,
//      this.height = 125,
//      this.borderRadius = 20,
//      required this.width,
//      required this.backgroundimage,
//      this.padding,
//      this.margin,
//      this.child,


//   }) : super(key: key);

//   final double height;
//   final double width;
//   final String backgroundimage;
//   final EdgeInsets? padding;
//   final EdgeInsets? margin;
//   final double borderRadius;
//   final Widget? child;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       width: width,
//       padding: padding,
//       decoration: BoxDecoration(
//         image: DecorationImage(image: AssetImage(backgroundimage),
//     fit: BoxFit.cover,
//     colorFilter: ColorFilter.mode(Color.fromARGB(255, 188, 57, 52), BlendMode.darken))
//       ),
//       child: child,
//     );
//   }
// }