import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 52, 52),
        title: const Text(
          'Wishlist Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CupertinoButton(
                color: const Color.fromARGB(255, 210, 52, 52),
                borderRadius: BorderRadius.circular(15),
                child: const Text('Go to details wishlist'),
                onPressed: () =>
                    Navigator.pushNamed(context, '/detailWishlist'))
          ],
        ),
      ),
    );
  }
}
