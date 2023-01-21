import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logisticsapp/screens/home.dart';
import 'package:logisticsapp/screens/login.dart';
import 'package:logisticsapp/utencil.dart';

class Otpverification extends StatefulWidget {
  const Otpverification({super.key});

  @override
  State<Otpverification> createState() => _OtpverificationState();
}

class _OtpverificationState extends State<Otpverification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('OTP Verification', style: TextStyle(color: Colors.black),),
         leading: IconButton( icon: const Icon(Icons.arrow_back, color:Colors.black ),
              onPressed: (() {Navigator.push(context, 
                     MaterialPageRoute(builder: (context) => const LoginPage()));
             }
           ),
            )
      ),
      // extendBodyBehindAppBar: true,
      body: Column(
        children: [ 
               Container(
                 margin: const EdgeInsets.only( top: 5),
                height: 350,
               decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/pics1.png'),
                   fit: BoxFit.contain )),
                   ),
                   const SizedBox(
                   height: 20,),

                   const Text('we will send you a one time password to thos numher'),
                   const SizedBox(height: 20,),

                   Form(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 68, width: 64,
                      child: TextFormField(
                        onSaved: (pin1) {
                          
                        },
                         onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(),
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),),
                      SizedBox(height: 68, width: 64,
                      child: TextFormField(
                        onSaved: (pin2) {
                          
                        },
                         onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),),
                      SizedBox(height: 68, width: 64,
                      child: TextFormField(
                        onSaved: (pin3) {
                          
                        },
                         onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),),
                      SizedBox(height: 68, width: 64,
                      child: TextFormField(
                        onSaved: (pin4) {
                          
                        },
                        onChanged: (value) {
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),),
                      
                    ],
                   )),
                    const SizedBox(height: 30,),

                            Center(
                              child: RichText( textAlign: TextAlign.center, text: const TextSpan(text: 
                              'incorrect number?',
                              style: textstylebold,
                              children:[
                                TextSpan(
                                  text: 'edit', style: redtext,
                                  // recognizer: TapGestureRecognizer()onTap =(() {
                                    
                                  // })
                                ), 
                              ] ),
                           ),
                            ),
                             const SizedBox(height: 10,),

                            Center(
                              child: RichText( textAlign: TextAlign.center, text: const TextSpan(text: 
                              'didn/t receive any OTP?',
                              style: textstylebold,
                              children:[
                                TextSpan(
                                  text: 'Resend', style: redtext,
                                  // recognizer: TapGestureRecognizer()onTap =(() {
                                    
                                  // })
                                ), 
                              ] ),
                           ),
                            ),
                            const SizedBox(height: 40,),
                             Center(
                               child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 255, 47, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                   minimumSize: const Size(320, 50)), onPressed: (() {Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const HomePage()));
                   }), child: const Text('Login', style: whitetextbox,)),
                             ),

        ],

      ),
    );
  }
}