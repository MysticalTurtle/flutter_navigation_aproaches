import 'package:flutter/material.dart';
import 'package:navigator/screens/all.dart';
import 'package:provider/provider.dart';
import 'controllers/game.dart';
import 'controllers/navigation.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<NavigationController>(
          create: (_) => NavigationController(),
        ),
        ListenableProvider<GameController>(
          create: (_) => GameController(),
        )
      ],
      child: const NavApp(),
    ),
  );
}

class NavApp extends StatelessWidget {
  const NavApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: getPages(context),
        onPopPage: (route, result) {
          bool popStatus = route.didPop(result);
          if (popStatus) {
            Provider.of<NavigationController>(context, listen: false)
                .changeScreen('/');
          }
          return popStatus;
        },
      ),
    );
  }
}

List<Page> getPages(context) {
  NavigationController navigation = Provider.of<NavigationController>(context);

  List<Page> pageList = [];
  pageList.add(const MaterialPage(child: ListScreen()));

  switch (navigation.screenname) {
    case '/settings':
      pageList.add(const MaterialPage(child: SettingsScreen()));
      break;
    case '/about':
      pageList.add(const MaterialPage(child: AboutScreen()));
      break;
    case '/details':
      pageList.add(const MaterialPage(child: DetailsScreen()));
      break;
    default:
      pageList.add(const MaterialPage(child: ListScreen()));
  }
  return pageList;
}
