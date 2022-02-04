import 'package:flutter/material.dart';
import 'package:navigator/models/game.dart';

class GameController extends ChangeNotifier {
  int gameIndex = 0;

  List<Game> list = [
    Game("Pong", "Uno de los primeros juegos"),
    Game("Mario 3", "Un clásico de los clásicos"),
    Game("Snake", "Mi primer juego"),
  ];

  void changeIndex(int newIndex) {
    gameIndex = newIndex;
    notifyListeners();
  }
}