import 'package:flutter/material.dart';
import 'package:treino_um/app/components/check_box.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Back'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
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
                      const Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      const SizedBox(height: 25),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          const CheckboxExample(),
                          RichText(
                            text: const TextSpan(
                              text: 'I agree to the processing of ',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Personal Data',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ))),
                            onPressed: () {},
                            child: const Text('Sign Up')),
                      ),
                      const SizedBox(height: 25),
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
                          const Expanded(
                              flex: 1,
                              child: Text(
                                'Sign Up with',
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
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all<Color>(Colors.white30),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all<Color>(Colors.white30),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.blur_on_outlined,
                              size: 30,
                              color: Colors.cyan,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all<Color>(Colors.white30),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.gif,
                              size: 30,
                              color: Colors.blue,
                            ),
                          ),
                          IconButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all<Color>(Colors.white30),
                            ),
                            onPressed: () {},
                            icon: const Icon(
                              Icons.apple,
                              size: 30,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have a account?',
                            style: TextStyle(color: Colors.grey),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/signin');
                              },
                              child: const Text(
                                'Sign In',
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