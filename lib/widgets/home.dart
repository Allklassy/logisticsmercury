import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
        children: [
          SafeArea(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text('Hello'),
                const SizedBox(width: 10,),
                const Text('JohnDoe'),
                IconButton(onPressed: (() {
                  
                }), icon:const Icon(Icons.notifications_outlined), padding: const EdgeInsets.only(left: 250), ),
                
              ],
            ),
          )),
          Container(
            height: 200,
            width: 350,
            decoration:  BoxDecoration(
              image: const DecorationImage(image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: const [
                Text('Track a Parcel'),
                

              ],
            ),
          )
        ],
      ),
      
    );
  }
}