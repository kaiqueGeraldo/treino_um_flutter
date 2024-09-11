import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 110, 52),
        title: const Text(
          'Updates Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
                color: const Color.fromARGB(255, 210, 110, 52),
                borderRadius: BorderRadius.circular(15),
                child: const Text('Go to details updates'),
                onPressed: () =>
                    Navigator.pushNamed(context, '/detailUpdates'))
          ],
        ),
      ),
    );
  }
}
