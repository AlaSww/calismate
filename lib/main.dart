import 'package:calismate/onboardingscreen.dart';
import 'package:calismate/pages/login/loginpage.dart';
import 'package:calismate/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      darkTheme: darkmode,
      title: 'TheGorgeousLogin',
      home:const Onboardingscreen(),
      routes: {
        'loginpage': (context) => Loginpage(),
      },
    );
  }
}
