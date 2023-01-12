
import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/createaccount.dart';
import 'package:logisticsapp/utencil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                     MaterialPageRoute(builder: (context) => const CreateAccount()));
             }
           ),
            )
      ),extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/background.png'),
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
                      padding: const EdgeInsets.all(20),
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
                              
                              Text('Email Address', style:textstylebold ,),
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
                            Text('Password', style: textstylebold,),

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
                           )   ],
                          
                        
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