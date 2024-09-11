import 'package:flutter/material.dart';
import 'package:treino_um/app/views/details_wishlist_page.dart';
import 'package:treino_um/app/views/main_wishlist_page.dart';

class Whishlist extends StatefulWidget {
  const Whishlist({super.key});

  @override
  State<Whishlist> createState() => _WhishlistState();
}

class _WhishlistState extends State<Whishlist> {
  GlobalKey<NavigatorState> wishlistNavigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: wishlistNavigatorKey,
      onGenerateRoute: (RouteSettings settigns) {
        return MaterialPageRoute(
          settings: settigns,
          builder: (BuildContext context) {
            if (settigns.name == '/detailWishlist') {
              return const DetailsWishlistPage();
            }
            return const WishlistPage();
          },
        );
      },
    );
  }
}
