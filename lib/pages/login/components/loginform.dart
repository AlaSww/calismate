import 'package:flutter/material.dart';

class Loginform extends StatelessWidget {
  const Loginform({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.sizeOf(context).width;
    Color primary =Theme.of(context).colorScheme.primary;
    return Form(child: Column(
      spacing: 30,
      children: [
        SizedBox(
          width: screenwidth*0.85,
          child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onSaved: (email) {},
              decoration: InputDecoration(
                labelText: "Email/Username"
              ),
            ),
        ),
          SizedBox(
            width: screenwidth*0.85,
            child: TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
          ),
          Padding(
            padding:EdgeInsets.only(left: screenwidth*0.58),
            child: Text("forgot password?"),
            ),
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10)
            ),
            alignment: Alignment.center,
            width: screenwidth*0.7,
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenwidth*0.06
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't you have an account?"),
              GestureDetector(
                child: Text(
                  " create now".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ],
          )
      ],
    ));
  }
}