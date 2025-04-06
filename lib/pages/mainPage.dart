import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/logo.png",
              height: screenwidth*0.3,
              ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon:Icon(Icons.person),
            iconSize: screenwidth*0.08,
            )
        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Theme.of(context).colorScheme.primary,
        tabs: [
          GButton(
            icon:Icons.home,
            text: "Home",
            gap: 8,
          ),
          GButton(
            icon:Icons.schedule,
            text: "Plans",
            gap: 8,
          ),
          GButton(
            icon:Icons.message,
            text: "Messages",
            gap: 8,
          ),
          GButton(
            icon:Icons.settings,
            text: "Settings",
            gap: 8,
          ),
        ],
      ),
    );
  }
}