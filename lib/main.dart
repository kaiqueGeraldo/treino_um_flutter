import 'package:flutter/material.dart';
import 'package:treino_um/app/views/home_page.dart';
import 'package:treino_um/app/views/initial_page.dart';
import 'package:treino_um/app/views/sign_in_page.dart';
import 'package:treino_um/app/views/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InitialPage(),
        '/signin': (context) => SignInPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}