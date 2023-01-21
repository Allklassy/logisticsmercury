

// ignore: unused_import
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/get_started.dart';
import 'package:logisticsapp/screens/login.dart';
import 'package:logisticsapp/screens/otp.dart';
import 'package:logisticsapp/utencil.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
   bool _obsecuredText = true;
  late final TextEditingController _name;
  late final TextEditingController _phonenumber;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _confirmpassword;

  @override
  void initState(){
    _name = TextEditingController();
    _password = TextEditingController();
    _email = TextEditingController();
    _phonenumber = TextEditingController();
    _confirmpassword = TextEditingController();
    super.initState();
    
    @override
    // ignore: unused_element
    void dispose(){
      _email.dispose();
      _confirmpassword.dispose();
      _phonenumber.dispose();
      _name.dispose();
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
         leading: IconButton( icon: const Icon(Icons.arrow_back, color:Colors.black ),
              onPressed: (() {Navigator.push(context, 
                     MaterialPageRoute(builder: (context) => const Getstartedscreen()));
             }
           ),
            )
      ),extendBodyBehindAppBar: true,
      body: SingleChildScrollView(physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
             horizontal: 20,
             vertical: 40 
            ),
        child: Column(
          children:  [
            const SizedBox(height: 50),
           const Center(child: Text('Create Account', style: heading,)),
          const Text('Kindly fill out your details correctly', style: textstylesmall,),
          const SizedBox(height: 80,),
      
          Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email Address', style:textstylebold ,),
                              TextFormField(
                              controller: _name,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 246, 245, 245),
                                
                                labelText: 'Enter your name',
                                hintStyle: textstylesmall,
                                border: InputBorder.none,
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                                
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                              
                            ),const Text('phone Number', style:textstylebold ,),
                              TextFormField(
                              controller: _phonenumber,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 246, 245, 245),
                                
                                labelText: 'Enter your phone number',
                                hintStyle: textstylesmall,
                                border: InputBorder.none,
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                                
                              ),
                            ),
                              const SizedBox(
                              height: 20,
                              
                            ),const Text('Email ', style:textstylebold ,),
                              TextFormField(
                              controller: _email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color.fromARGB(255, 246, 245, 245),
                                
                                labelText: 'Enter your email address',
                                hintStyle: textstylesmall,
                                border: InputBorder.none,
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                                
                              ),
                            ),
                              const SizedBox(
                              height: 20,
                              
                            ),const SizedBox(height: 20,),
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
                            const SizedBox(height: 20,),
                            const Text('confirm password', style: textstylebold,),
      
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
                                
                                labelText: 'reenter your password',
                                hintStyle: textstylesmall,
                                border: InputBorder.none,
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5)
                                )
                                
                              ),
                              obscureText: true,
                            ),
                            const SizedBox(height: 20,),
                            Center(
                              child: RichText( textAlign: TextAlign.center, text: const TextSpan(text: 
                              'By creating an account i agree to the',
                              style: textstylesmall,
                              children:[
                                
                                TextSpan(
                                  text: 'terms and\n condition', style: redtext,
                                  
                                ), TextSpan(text: 'of Delcity logistis', style: textstylesmall)
                              ] ),
                           ),
                            ),
                            const SizedBox(height: 20,),
                             Center(
                               child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 255, 47, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                   minimumSize: const Size(320, 50)), onPressed: (() {Navigator.push(context, 
                   MaterialPageRoute(builder: (context) => const Otpverification()));
                   }), child: const Text('Create Account', style: whitetextbox,)),
                             ),
                              const SizedBox(height: 20,),
                            Center(
                              child: RichText( textAlign: TextAlign.center, text: const TextSpan(text: 
                              'Don\'t have an account?',
                              style: textstylesmall,
                              children:[
                                TextSpan(
                                  text: 'Register', style: redtext,
                                  // recognizer: TapGestureRecognizer()onTap =(() {
                                    
                                  // })
                                ), 
                              ] ),
                           ),
                            ),
      
            
          ],)
          
          ], 
        ),
      ),
    
    );
    
  }
}