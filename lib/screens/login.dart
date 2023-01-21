
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logisticsapp/screens/createaccount.dart';
import 'package:logisticsapp/screens/get_started.dart';
import 'package:logisticsapp/screens/otp.dart';
import 'package:logisticsapp/screens/resetpassword.dart';
import 'package:logisticsapp/utencil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRememberMe = false;
  bool _obsecuredText = true;
  late final TextEditingController _emailAddress;
  late final TextEditingController _password;

  @override
  void initState(){
    _emailAddress = TextEditingController();
    _password = TextEditingController();
    super.initState();
    
    @override
    void dispose(){
      _emailAddress.dispose();
      _password.dispose();
      super.dispose();
    }
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
         leading: IconButton( icon: const Icon(Icons.arrow_back, color:Color.fromARGB(255, 255, 255, 255) ),
              onPressed: (() {Navigator.push(context, 
                     MaterialPageRoute(builder: (context) => const Getstartedscreen()));
             }
           ),
            )
      ),extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/background2.png'),
                colorFilter: ColorFilter.mode(Color.fromARGB(255, 188, 57, 52), BlendMode.darken),
                fit: BoxFit.cover)
              ),
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Container(
               margin: const EdgeInsets.only(top: 80),   
                 child: const Image(image: AssetImage('assets/images/icononly.png')),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(40),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.white
                      ),
                      child: Column(
                        children:  [
                          const Text('Welcome Back', style: heading ,),
                          const Text('Kindly enter your login details', style:textstylesmall ,),
                          
                          const SizedBox(height: 20,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                              const Text('Email Address', style:textstylebold ,),
                              TextFormField(
                              controller: _emailAddress,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 246, 245, 245),
                                
                                labelText: 'Enter email adress',
                                hintStyle: textstylesmall,
                                border: InputBorder.none,
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                                
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const Text('Password', style: textstylebold,),

                            TextFormField(
                              controller: _password,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obsecuredText=!_obsecuredText;
                                    });
                                    
                                  },
                                  child: Icon(_obsecuredText ?Icons.visibility : 
                                  Icons.visibility_off),
                                ),
                                filled: true,
                                fillColor: const Color.fromARGB(255, 246, 245, 245),
                                
                                labelText: 'Enter password',
                                hintStyle: textstylesmall,
                                border: InputBorder.none,
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                                
                              ),
                              obscureText: true,
                            ),

                            ],
                           ),
                           const SizedBox(height: 20,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Container(
                                height: 20,
                                child: Row(
                                  children: [
                                    Checkbox(
                                     value: isRememberMe, 
                                    checkColor: Colors.redAccent,
                                    activeColor: Colors.black,
                                    onChanged: (value) {
                                      setState(() {
                                        isRememberMe = value!;
                                      });
                                    },),
                                   const Text('Remember me',
                                   style: textstylesmall,),

                                  ],
                                ),

                            
                               ),
                               GestureDetector(
                                onTap: (() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()  ,));
                                  
                                }),
                                 child: const Text('Forgot Password?',
                                 style: redtext,),
                               ),
                             ],
                           ),
                           const SizedBox(height: 80,),
                             Center(
                               child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 255, 47, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                   minimumSize: const Size(320, 50)), onPressed: (() {Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const Otpverification()));
                   }), child: const Text('Login', style: whitetextbox,)),
                             ),
                             const SizedBox(
                              height: 30,
                             ),
                             const Text('or continue with ', style: textstylebold,),

                             const SizedBox(
                              height: 30,
                              
                             ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.facebook_rounded, size: 30, color: Colors.black54,),
                                Icon(FontAwesomeIcons.twitter, size: 30, color: Colors.black54,),
                                Icon(FontAwesomeIcons.google, size: 30, color: Colors.black54,),
                                
                                
                              ],

                             ),
                              const SizedBox(height: 30,),

                            Center(
                              child: RichText( textAlign: TextAlign.center, text: const TextSpan(text: 
                              'Don\'t have an account?',
                              style: textstylebold,
                              children:[
                                TextSpan(
                                  text: 'Sign up', style: redtext,
                                  // recognizer: TapGestureRecognizer()onTap =(() {
                                    
                                  // })
                                ), 
                              ] ),
                           ),
                            ),
                            const SizedBox(height: 30,)

                             
                             ],
                          
                        
                      ), 
                       ),
                  ],
                ),
              ],
            )
          ],

        ),
      ));
  }
}

