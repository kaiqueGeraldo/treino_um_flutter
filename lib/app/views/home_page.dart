import 'package:flutter/material.dart';
import 'package:treino_um/app/components/mainwrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: SizedBox(
      child: MainWrapper()
    ),
    );
  }
}
