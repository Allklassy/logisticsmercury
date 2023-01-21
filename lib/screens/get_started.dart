import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/createaccount.dart';
import 'package:logisticsapp/screens/login.dart';
import 'package:logisticsapp/screens/termofuse.dart';
import 'package:logisticsapp/utencil.dart';



class Getstartedscreen extends StatefulWidget {
  const Getstartedscreen({super.key});

  @override
  State<Getstartedscreen> createState() => _GetstartedscreenState();
}

class _GetstartedscreenState extends State<Getstartedscreen> {
  get children => null;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Colors.transparent,
        
        body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Rectangle479.png'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Image(
                image: AssetImage('assets/images/whitelogo.png')),
                
                const SizedBox(height: 180,),

                 Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 55),
                    backgroundColor:const Color.fromARGB(255, 255, 47, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),),
                  onPressed: () {Navigator.push(context, 
                       MaterialPageRoute(builder: (context) => const LoginPage()));

                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Gilroy Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 55),
                    backgroundColor:const Color.fromARGB(255, 67, 65, 73),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),),
                  onPressed: () {Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const CreateAccount()));
                    
                  },
                  child: const Text(
                    'Create Account',
                    style: whitetextbox
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 55),
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(width: 1.5, color: Colors.white),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {},
                  child: const Text(
                    'Track a Parcel',
                    style: TextStyle(
                        fontFamily: 'Gilroy Regular',
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 55),
                      backgroundColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  onPressed: () {
                    Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const Termofuse()));
                  },
                  child: const Text(
                    'Terms of use',
                    style:  TextStyle(color: Color.fromARGB(255, 255, 47, 40),),),
                  ),
            ),
            const SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
                 
        

                  
                   
                  
          //     ],
          //   ),
          // ),
          );
      

  }
}

