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
    return Scaffold(
      appBar: AppBar(

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
            icon:Icons.person,
            text: "Profile",
            gap: 8,
          ),
        ],
      ),
    );
  }
}