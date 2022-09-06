import 'package:flutter/material.dart';
import 'package:zomato_clone/Screens/SubScreen/DonateScreen.dart';
import 'package:zomato_clone/Screens/SubScreen/GoOutScreen.dart';
import 'package:zomato_clone/Screens/SubScreen/NutritionScreen.dart';
import 'package:zomato_clone/Screens/SubScreen/OrderScreen.dart';
import 'package:zomato_clone/Screens/SubScreen/ProScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List screens = [
    OrderScreen(),
    GoOutScreen(),
    ProScreen(),
    NutritionScreen(),
    DonateScreen()
  ];

  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: currenIndex,
        onTap: (val) {
          setState(() {
            currenIndex = val;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.border_outer_outlined,
              color: Colors.black,
            ),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pedal_bike_outlined,
              color: Colors.black,
            ),
            label: "Go Out",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
              color: Colors.black,
            ),
            label: "Pro",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.healing,
              color: Colors.black,
            ),
            label: "Nutrition",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.done,
              color: Colors.black,
            ),
            label: "Donate",
          ),
        ],
      ),
    );
  }
}
