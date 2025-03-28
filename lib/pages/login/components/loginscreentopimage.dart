import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';







class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child:Image.asset("assets/login.png"),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: 02),
      ],
    );
  }
}