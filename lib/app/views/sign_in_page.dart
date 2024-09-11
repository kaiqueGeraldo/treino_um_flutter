// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:treino_um/app/components/check_box.dart';
import 'package:treino_um/app/components/show_alert.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Back'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 700,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      SizedBox(height: 25),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        onChanged: (text) {
                          email = text;
                        },
                      ),
                      SizedBox(height: 25),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        onChanged: (text) {
                          password = text;
                        },
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CheckboxExample(),
                          Text(
                            'Remember-me',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 65),
                          TextButton(
                            onPressed: () {},
                            child: Text('Forgot pasword?',
                                style: TextStyle(color: Colors.blue)),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ))),
                            onPressed: () {
                              if (email == 'kaique' && password == '123') {
                                Navigator.of(context).pushReplacementNamed('/home');
                              } else {
                                showAlert(context, 'Erro', 'Email ou senha incorretos.');
                              }
                            },
                            child: Text('Sign In')),
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 100,
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                'Sign In with',
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.center,
                              )),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 100,
                              height: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Colors.white30),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.facebook,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Colors.white30),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.blur_on_outlined,
                              size: 30,
                              color: Colors.cyan,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Colors.white30),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.gif,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all<Color>(
                                  Colors.white30),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.apple,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'don´t have a account?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/signup');
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
