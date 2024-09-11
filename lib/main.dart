import 'package:flutter/material.dart';
import 'package:treino_um/app/views/details_updates_page.dart';
import 'package:treino_um/app/views/details_wishlist_page.dart';
import 'package:treino_um/app/views/home_page.dart';
import 'package:treino_um/app/views/initial_page.dart';
import 'package:treino_um/app/views/sign_in_page.dart';
import 'package:treino_um/app/views/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPage(),
        '/signin': (context) => const SignInPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
        '/detailWishlist': (context) => const DetailsWishlistPage(),
        '/detailUpdates': (context) => const DetailsUpdatesPage(),
      },
    );
  }
}