import 'package:calismate/intro%20screens/intropage1.dart';
import 'package:calismate/intro%20screens/intropage2.dart';
import 'package:calismate/intro%20screens/intropage3.dart';
import 'package:calismate/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  bool onlastpage=false;
  PageController controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        PageView(
          onPageChanged: (index){
            setState(() {
              onlastpage=(index==2);
            });
          },
          controller: controller,
          children: [
            Intropage1(),
            Intropage2(),
            Intropage3(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => controller.jumpToPage(2),
                child: Text(
                  "skip",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SmoothPageIndicator(controller: controller, count:3),
              GestureDetector(
                onTap: !onlastpage?(){
                  controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn
                );}:(){Navigator.pushNamed(context, 'loginpage');},
                child: Text(
                  !onlastpage ?"next":"done",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          )
          )
        ]
      ),
    );
  }
}