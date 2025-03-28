import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Intropage3 extends StatelessWidget {
  const Intropage3({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 41, 166, 255),
      child: Column(
        children: [
          SvgPicture.asset('assets/19184597_6087309.svg'),
          SizedBox(
            width: screenwidth*0.8,
            child: Text(
              "Track every rep, set, and milestone to see your progress. Learn proper form with guided tutorials and train smarter with data-driven insights.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ],
      )
    );
  }
}