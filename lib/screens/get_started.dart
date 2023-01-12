import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/createaccount.dart';
import 'package:logisticsapp/screens/login.dart';
import 'package:logisticsapp/screens/termofuse.dart';
import 'package:logisticsapp/utencil.dart';
import '../widgets/widgets.dart';


class Getstartedscreen extends StatefulWidget {
  const Getstartedscreen({super.key});

  @override
  State<Getstartedscreen> createState() => _GetstartedscreenState();
}

class _GetstartedscreenState extends State<Getstartedscreen> {
  @override
  Widget build(BuildContext context) {
    
    return Stack(children: [
      
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                 Container(
                  margin: const EdgeInsets.only(top: 150),
                   child: const Image(image: AssetImage('assets/images/whitelogo.png'),
                    width: 300,
                    height: 300,),
                    
                    
                 ),
                 
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 255, 47, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                   minimumSize: const Size(320, 50)), onPressed: (() {Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => LoginPage()));
                   }), child: const Text('Login', style: whitetextbox,)),


                   const SizedBox(
                    height: 20,
                   ),
                    ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 67, 65, 73),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                   minimumSize: const Size(320, 50)), onPressed: (() {Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => CreateAccount()));
                   }), child: const Text('Create Account', style: whitetextbox,)),

                   const SizedBox(height: 20,),
                    ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:Colors.transparent,
                  shape: RoundedRectangleBorder(side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5)
                  ),
                   minimumSize: const Size(320, 50)), onPressed: (() {
                   }), child: const Text('Track a Parcel', style: whitetextbox,)),

                   
                   const SizedBox(height: 20,),

                   GestureDetector(child:const Text('Terms of use', style: 
                   TextStyle(color: Color.fromARGB(255, 255, 47, 40),),),
                   onTap: () {
                     Navigator.of(context).push(MaterialPageRoute(builder: 
                     (BuildContext context) => Termofuse()));
                   },)

                  
                   
                  
              ],
            ),
          ),
        ),
      )
    ],
      
    );
//      Stack(
//       children: [
//         Backgroundimage(),
//         Scaffold(
//           backgroundColor: Colors.transparent,
//           body:  Column(
//               children: [Flexible(
//                   child: Center(
//                     child: Image(image: AssetImage('assets/images/whitelogo.png')))),
//                     TextInputField(),
//                      Padding(padding: const EdgeInsets.symmetric(vertical: 7),
//                       child: Container(
//                        height: 50,
//                        decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 255, 47, 40),
//                        borderRadius: BorderRadius.circular(7)
//           ), child: const Center(
//           child: TextField(textAlign: TextAlign.center,
//             decoration: InputDecoration(
//               border: InputBorder.none,
//                hintText: 'Create Account',
//                hintStyle: whitetextbox ),
//                ),
//                )
//                       ),
//                     ),
//                      Padding(padding: const EdgeInsets.symmetric(vertical: 15),
//                       child: Container(
//                        height: 50,
//                        decoration: BoxDecoration(
//                         color: Colors.transparent,
//                         border: Border.all(color: Colors.white
//                         ),
//                        borderRadius: BorderRadius.circular(7)
//           ), child: const Center(
//           child: TextField(textAlign: TextAlign.center,
//             decoration: InputDecoration(
//               border: InputBorder.none,
//                hintText: 'Track your parcel',
//                hintStyle: whitetextbox ),
//                ),
//                )
//                       ),
//                     ),
//                    Padding(padding: const EdgeInsets.symmetric(vertical: 10),
//                       child:Text('Terms of use', style: TextStyle(
//                         color:  Color.fromARGB(255, 255, 47, 40),
//                       ),) )
                    
//               ],
//             ),
          
//         )
//       ],
//     ); }
// }

// class TextInputField extends StatelessWidget {
//   const TextInputField({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size =MediaQuery.of(context).size;
//     return Padding(padding: const EdgeInsets.symmetric(vertical: 7),
//       child: Container(
//        height: size.height *0.06,
//        width: size.width *0.9,
//        decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 255, 47, 40),
//        borderRadius: BorderRadius.circular(7)
//           ), child: const Center(
//           child: TextField(textAlign: TextAlign.center,
//             decoration: InputDecoration(
//               border: InputBorder.none,
//                hintText: 'Login',
//                hintStyle: whitetextbox ),
//                ),
//                )
//       ),
//     );
  }
}

