import 'package:flutter/material.dart';
import 'package:navigator/components/bottomnav.dart';
import 'package:navigator/controllers/game.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameController game = Provider.of<GameController>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalles"),
      ),
      body: Center(child: Text(game.list[game.gameIndex].description, style: Theme.of(context).textTheme.headline5,)),
    );
  }
}
