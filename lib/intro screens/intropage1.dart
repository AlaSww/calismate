import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Intropage1 extends StatelessWidget {
  const Intropage1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 255, 200, 34),
      child: Column(
        children: [
          SvgPicture.asset('assets/8398821_3894383.svg'),
          SizedBox(
            width: screenwidth*0.8,
            child: Text(
              "Build your perfect workout or pick expert-designed plans. Train smarter, track progress, and crush your goals!",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Colors.black
              ),
            ),
          ),
        ],
      )
    );
  }
}