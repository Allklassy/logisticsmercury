import 'package:flutter/material.dart';

class Myorder extends StatefulWidget {
  const Myorder({super.key});

  @override
  State<Myorder> createState() => _MyorderState();
}
 
class _MyorderState extends State<Myorder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton( icon: const Icon(Icons.arrow_back, color:Colors.black ),
                onPressed: (() {
               }
             ),
              ),
              centerTitle: true,
              title: 
               const Text('Order History', style: TextStyle(color: Colors.black, fontFamily:'GIlroy Regular' ),
              ),
        ),
        body: Column(
          
          
          children: [
            
             Container(
           
            margin: const EdgeInsets.all(20),

            child:  const TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 200, 200, 200),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
                hintText: 'Search for Order',
                prefixIcon: Icon(Icons.search_sharp),
                prefixIconColor: Colors.black
              ),
              
            ),
            
    
          ),
          const SizedBox(
            height: 20,
          ),
           Container(
            height: 40,
            margin:const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color:const Color(0xFFC8C8C8),
              borderRadius: BorderRadius.circular(10)
            ),
             child: TabBar(
              indicator: BoxDecoration(
                color: const Color(0xFFFF2F28),
                borderRadius: BorderRadius.circular(5)

              ),
              tabs: const [
              Tab(text: 'Pending'),
               Tab(text: 'Delivered')
              ]),
           ),
           Container(
            height: 450,
             child: TabBarView(children: [
               ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  // margin: const EdgeInsets.only(left: 20, right: 20),
                  // padding: const EdgeInsets.all(0),
                  height: 200,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15 ),
                    color:const Color(0xFFDEDEDE)
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      
                      
                      children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text('# DEL-231-234-01', style: TextStyle(fontFamily:
                          'Gilroy Regular', fontWeight: FontWeight.w600),),
                          
                          RichText( textAlign: TextAlign.center, text: const TextSpan(
                            text: 'Status:',
                              style: TextStyle(color: Colors.black,
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 10),
                              children:[
                                
                                TextSpan(
                                  text: ' Unresolved', style: TextStyle(color: Color(0xFFff0000)),
                                  
                                ),
                              ] ),
                           ),
                           const SizedBox(height: 20,),
                          const Text('Item Type',
                          style: TextStyle(color: Colors.black,
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 10),),
                               const Text('Gadget Pack',
                                style: TextStyle(color: Color(0xFF1d1d1d),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 13),),

                               const SizedBox(height: 20,),
                          const Text('Package Size',
                          style: TextStyle(color: Colors.black,
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 10),),
                               const Text('Not Specified',
                                style: TextStyle(color: Color(0xFF1d1d1d),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 13),)
                      ],),
                      const SizedBox(width: 110,),
                       Column(crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                        const Text('06-Feb-2023',
                        style: TextStyle(color: Color(0xFF434149),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w600,
                               fontSize: 10),),
                        const Text('04:00pm',
                        style: TextStyle(color: Color(0xFF434149),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w600,
                               fontSize: 10),),

                               const SizedBox(height: 80,),
                               Expanded(
                                 child: Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  height: 10,
                                  width: 80,
                                   child: ElevatedButton(
                                                   style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 55),
                                                     backgroundColor:const Color(0xFF434149),
                                                     shape: RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(5)
                                                     ),),
                                                   onPressed: () {
                                                   },
                                                   child: const Text(
                                                     'Login',
                                                     style: TextStyle(
                                                         fontFamily: 'Gilroy Regular',
                                                         color: Colors.white,
                                                         fontWeight: FontWeight.w700),
                                                   )),
                                 ),
                               ),


                       ],),
                    ],),
                  ),
                ),
            );
             }),
                ListView.builder(
                  scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  // margin: const EdgeInsets.only(left: 20, right: 20),
                  // padding: const EdgeInsets.all(0),
                  height: 200,
                  width: double.infinity,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15 ),
                    color:const Color(0xFFDEDEDE)
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      
                      
                      children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text('# DEL-231-234-01', style: TextStyle(fontFamily:
                          'Gilroy Regular', fontWeight: FontWeight.w600),),
                          
                          RichText( textAlign: TextAlign.center, text: const TextSpan(
                            text: 'Status:',
                              style: TextStyle(color: Colors.black,
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 10),
                              children:[
                                
                                TextSpan(
                                  text: ' Delivered', style: TextStyle(color: Color(0xFF40C700)),
                                  
                                ),
                              ] ),
                           ),
                           const SizedBox(height: 20,),
                          const Text('Item Type',
                          style: TextStyle(color: Colors.black,
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 10),),
                               const Text('Gadget Pack',
                                style: TextStyle(color: Color(0xFF1d1d1d),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 13),),

                               const SizedBox(height: 20,),
                          const Text('Package Size',
                          style: TextStyle(color: Colors.black,
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 10),),
                               const Text('Not Specified',
                                style: TextStyle(color: Color(0xFF1d1d1d),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w500,
                               fontSize: 13),)
                      ],),
                      const SizedBox(width: 110,),
                       Column(crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                        const Text('06-Feb-2023',
                        style: TextStyle(color: Color(0xFF434149),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w600,
                               fontSize: 10),),
                        const Text('04:00pm',
                        style: TextStyle(color: Color(0xFF434149),
                              fontFamily: 'Gilroy', fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w600,
                               fontSize: 10),),

                               const SizedBox(height: 80,),
                               Expanded(
                                 child: Container(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  height: 10,
                                  width: 80,
                                   child: ElevatedButton(
                                                   style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 55),
                                                     backgroundColor:const Color(0xFF434149),
                                                     shape: RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(5)
                                                     ),),
                                                   onPressed: () {
                                                   },
                                                   child: const Text(
                                                     'Login',
                                                     style: TextStyle(
                                                         fontFamily: 'Gilroy Regular',
                                                         color: Colors.white,
                                                         fontWeight: FontWeight.w700),
                                                   )),
                                 ),
                               ),


                       ],),
                    ],),
                  ),
                ),
            );
             }),
             ]),
           )
    
          ],
        ),
      ),
    );
  }
}
            
            
            // ListTile(
            //     leading: const Icon(Icons.list),
            //     trailing: const Text(
            //       "GFG",
            //       style: TextStyle(color: Colors.green, fontSize: 15),
            //     ),
            //     title: Text("List item $index"));
         
              // Container(
              //   margin: const EdgeInsets.only(left: 20, right: 20),
              //   height: 300,
              //   width: double.infinity,
              //   decoration:  BoxDecoration(
              //     borderRadius: BorderRadius.circular(5),
              //     color:const Color(0xFFDEDEDE)
              //   ),
                
              // ),
           