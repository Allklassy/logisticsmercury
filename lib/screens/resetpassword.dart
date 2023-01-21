import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/login.dart';
import 'package:logisticsapp/utencil.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {


  late final TextEditingController _emailAddress;
  late final TextEditingController _phonenumber;

  @override
  void initState(){
    _emailAddress = TextEditingController();
    _phonenumber = TextEditingController();
    super.initState();
    
    @override
    // ignore: unused_element
    void dispose(){
      _emailAddress.dispose();
      _phonenumber.dispose();
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
                     MaterialPageRoute(builder: (context) => const LoginPage()));
             }
           ),
            )
      ),extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/Rectangle479.png'),
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
                          const Text('Reset your password', style: heading ,),
                          const Text('Kindly enter your Registered \nemail address below', style:textstylesmall ,),
                          
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
                              controller: _phonenumber,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 246, 245, 245),
                                
                                labelText: 'Enter Phone number',
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
                            Center(
                              child: RichText( textAlign: TextAlign.center, text: const TextSpan(text: 
                              'An email with a reset link will be sent to your \nregistered email address anf phone number. kindly \nclick the link for redirection or enter the',
                              style: textstylesmall,
                              children:[
                                
                                TextSpan(
                                  text: 'OTP', style: redtext,
                                  
                                ), TextSpan(text: 'sent via \nyour number.', style: textstylesmall)
                              ] ),
                           ),
                            ),

                           const SizedBox(height: 80,),

                             ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 255, 47, 40),
                  shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                  ),
                             minimumSize: const Size(320, 50)), onPressed: (() {Navigator.push(context, 
                             MaterialPageRoute(builder: (context) => const LoginPage()));
                             }), child: const Text('Reset Password', style: whitetextbox,)),

                             const SizedBox(
                              height: 30,
                             ),
                              Row(
                                children: [
                                  ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 255, 47, 40),
                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                  ),
                             minimumSize: const Size(320, 50)), onPressed: (() {Navigator.push(context, 
                             MaterialPageRoute(builder: (context) => const LoginPage()));
                             }), child: const Text('Back to Login', style: whitetextbox,)),
                             const Icon(Icons.arrow_back)
                                ],
                              ),
                             

                             const SizedBox(
                              height: 30,)

                             
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