import 'package:flutter/material.dart';
import 'package:logisticsapp/screens/get_started.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class UnboardingScreen extends StatefulWidget {
  const UnboardingScreen({super.key});

  @override
  State<UnboardingScreen> createState() => _UnboardingScreenState();
}

class _UnboardingScreenState extends State<UnboardingScreen> {
final PageController _controller =PageController();
  bool onlastpage = false;

  @override
  Widget build(BuildContext context) {
    return Container( 
      color: Colors.white,
        child: Stack(
        children: [PageView(
          controller: _controller,
          onPageChanged: (index){
            setState(() {
              onlastpage = (index ==2);
            });
          },
          children: [

            Container(alignment: Alignment.center,
            
            // ignore: sort_child_properties_last
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(40),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (() {}),
                    child: const Text("Skip", style: TextStyle(color: Color.fromARGB(255, 255, 47, 40),
                    fontWeight: FontWeight.w500,
                      fontFamily: "Gilroy",
                      fontSize: 16
                    ),),
                  )
               ), 
               
               Container(
                 margin: const EdgeInsets.only( top: 5),
                height: 350,
               decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/gif1.gif'),
                   fit: BoxFit.contain )),
                   ),
                   Container(
                    padding:const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                         RichText(
                      maxLines: 3,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan( text: 'Del', 
                        style:TextStyle(
                          color: Color.fromARGB(255, 255, 47, 40), fontFamily: 'Gilroy',
                          fontSize: 33)),
                          TextSpan(text: '''ivery just got easier''', style: 
                          TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gilroy',
                          fontSize: 33,), )]),
                    ),
                    const Text('Get your deliveries intact and right \non time, all from the comfort of \nyour mobile phone.', 
                    style: TextStyle(color: Color.fromARGB(255, 67, 65, 73), fontFamily: 'gilroy', fontSize: 15,
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w400),

                    textAlign: TextAlign.center,  )
                      ]
                    )
                    
                   )
                   ] 
                   ),
              
            ),
             Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(padding: const EdgeInsets.all(40),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      
                    },
                     child: const Text("Skip", style: TextStyle(color: Color.fromARGB(255, 255, 47, 40),
                      fontFamily: "Gilroy",
                      fontSize: 20),),),),
                      
                      Container(
                 margin: const EdgeInsets.only( top: 20),
                height: 350,
               decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/gif2.gif'),
                   fit: BoxFit.contain )),
                   ),
                   Container(
                    padding:const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: Column(
                      children: const [
                        Text('Track your parcel',  style: TextStyle(color: Colors.black, fontFamily: 'gilroy', fontSize: 33,
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w700),
                     textAlign: TextAlign.center,),
                        Text('Tracking your parcel just got easier, no long talks \nor driver’s stress. Enter your tracking digits and \nbe in charge.',
                         style: TextStyle(color: Color.fromARGB(255, 67, 65, 73), fontFamily: 'gilroy', fontSize: 15,
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w400),
                     textAlign: TextAlign.center, )
                      ],
                    )
                    
                    
                
                   )    
               ],
             ),
           Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [Container(
                 margin: const EdgeInsets.fromLTRB(20, 80, 20, 5),
                height: 400,
               decoration: const BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/pics3.png'),
                   fit: BoxFit.contain )),
                   ),
                   Container(
                    padding:const EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.center,
                    child: Column(
                      children: const [
                        Text('Lets get started',  style: TextStyle(color: Colors.black, fontFamily: 'gilroy', fontSize: 33,
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w700),
                     textAlign: TextAlign.center,),
                        Text('Our services are quick and efficient. \nDelcity Logistics got you everytime.',
                         style: TextStyle(color: Color.fromARGB(255, 67, 65, 73), fontFamily: 'gilroy', fontSize: 15,
                    fontStyle: FontStyle.normal, fontWeight: FontWeight.w400),
                     textAlign: TextAlign.center, )
                      ],
                    )
                   )    
               ],
             ),
          ],
        ),
        
            Container( margin: const EdgeInsets.only(top: 650),
              alignment:const Alignment(0, 0.8),
            child:Column(
              children: [
               
                SmoothPageIndicator(controller: _controller, count: 3,
                effect: const ExpandingDotsEffect(
                  offset: 10,
                  radius: 15,
                  activeDotColor: Colors.black,
                  dotColor: Color.fromARGB(255, 200, 200, 200),
                  dotHeight: 8,
                  dotWidth: 8
                ),),

                const SizedBox(
                  height: 20,
                ),
                 Container(alignment: Alignment.center ,
                 width: 300,
                 height: 50,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                 
                color: const Color.fromARGB(255, 255, 47, 40),),
                child:  Center(
                child: onlastpage ?
                 GestureDetector(
                  onTap: () {
                   Navigator.pushReplacement(context,MaterialPageRoute(builder: ((context) {
                    return (const Getstartedscreen());
                      })
                      )
                      );
                  },
                
                   child: const Text('Get Started', style: 
                TextStyle(color: Colors.white,
                fontFamily: 'Gilroy',
                  fontSize: 18, 
                  fontWeight: FontWeight.w700)
                ),
                 ):
                 GestureDetector(
                  onTap: () {
                    _controller.nextPage(duration: 
                   const Duration(microseconds:500 ), curve: Curves.easeIn,);
                  },
                
                   child: const Text('Next', style: 
                TextStyle(color: Colors.white,
                fontFamily: 'Gilroy',
                  fontSize: 18,
                  fontWeight: FontWeight.w700 )
                ),
                 )))
              ],
              
            )
             
            ),
       
        ]
        )

    );
  }
}