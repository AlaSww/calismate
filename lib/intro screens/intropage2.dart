import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Intropage2 extends StatelessWidget {
  const Intropage2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      color: const Color.fromARGB(255, 27, 182, 50),
      child: Column(
        children: [
          SvgPicture.asset('assets/7171521_3542927.svg'),
          SizedBox(
            width: screenwidth*0.8,
            child: Text(
              "Train together, grow faster! Join challenges, share progress, and get feedback from the community.",
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