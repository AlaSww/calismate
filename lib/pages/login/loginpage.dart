import 'package:calismate/pages/login/components/loginform.dart';
import 'package:calismate/pages/login/components/loginscreentopimage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    final double screeheight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: screeheight*0.1),
        child: Center(
          child: Column(
            children: [
              LoginScreenTopImage(),
              SizedBox(height: screeheight*0.05,),
              Loginform()
            ],
          ),
        ),
      ),
    );
  }
}