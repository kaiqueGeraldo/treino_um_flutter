import 'package:flutter/material.dart';
import 'package:treino_um/app/views/details_updates_page.dart';
import 'package:treino_um/app/views/main_updates_page.dart';

class UpdatesNavigator extends StatefulWidget {
  const UpdatesNavigator({super.key});

  @override
  State<UpdatesNavigator> createState() => _UpdatesNavigatorState();
}

class _UpdatesNavigatorState extends State<UpdatesNavigator> {
  GlobalKey<NavigatorState> updatesNavigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: updatesNavigatorKey,
      onGenerateRoute: (RouteSettings settigns) {
        return MaterialPageRoute(
          settings: settigns,
          builder: (BuildContext context) {
            if (settigns.name == '/detailUpdates') {
              return const DetailsUpdatesPage();
            }
            return const UpdatesPage();
          },
        );
      },
    );
  }
}
