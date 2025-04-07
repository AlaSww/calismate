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
              Theme.of(context).colorScheme.background==Color.fromARGB(255, 36, 36, 36)
              ?"assets/logodark.png"
              :"assets/logo.png"
              ,
              height: screenwidth*0.3,
              ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.favorite),
            iconSize: screenwidth*0.07,
            ),
          IconButton(
            onPressed: (){}, 
            icon:Icon(Icons.search),
            iconSize: screenwidth*0.08,
            )
        ],
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
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
        ),
      ),
    );
  }
}