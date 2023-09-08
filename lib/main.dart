import 'package:code/pages/home_page.dart';
import 'package:code/pages/sign_up.dart';
import 'package:code/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-up':(context) => SignUp(),
        '/home-page':(context) => HomePage()
        },
    );
  }
}
