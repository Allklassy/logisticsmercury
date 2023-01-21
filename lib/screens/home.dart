

import 'package:flutter/material.dart';
import 'package:logisticsapp/widgets/account.dart';
import 'package:logisticsapp/widgets/mrOrder.dart';
import 'package:logisticsapp/widgets/widgets.dart';
import 'package:logisticsapp/widgets/wishlist.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
@override
  State<HomePage> createState() => _HomePageState();
}class _HomePageState extends State<HomePage> {

 int selectedIndex = 0;

  static const List _widgetList = [
    HomeScreen(),
    Myorder(),
    Wishlist(),
    Account()
  ];

  static const List _appBarTextList = [
    "Home",
    "My order",
    "Wallet",
    "Account"
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _widgetList[selectedIndex],
      
    
           
           bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            items: const
             [BottomNavigationBarItem(icon: Icon(Icons.home),label:"home" ),
           BottomNavigationBarItem(icon: Icon(Icons.outbox_rounded),label:"My Order" ),
           BottomNavigationBarItem(icon: Icon(Icons.wallet),label:"Wallet" ),
           BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet ),label:"Account" ),
           
           
           
           ],
           currentIndex: selectedIndex,
        selectedItemColor: Colors.red,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
           
           ),
           );
            

    
  }
}