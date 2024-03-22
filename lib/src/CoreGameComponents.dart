import 'dart:math';

import 'package:dicegame/src/DiceGame.dart';

class CoreGameComponents{
  int round = 0;
  int playerScore = 1;
  int diceNumber = 4;
  int opponentScore = 1;
  List<int> playerThrow = [];
  List<int> opponentThrow = [];
  String victorMessage = "No one has won yet!";

  CoreGameComponents(){
    playerThrow = List<int>.filled(diceNumber, 1);
    opponentThrow = List<int>.filled(diceNumber, 1);
  }

  Null reset(){
    round = 0;
    playerScore = 1;
    diceNumber = 4;
    opponentScore = 1;
    playerThrow = List<int>.filled(diceNumber, 1);
    opponentThrow = List<int>.filled(diceNumber, 1);
    victorMessage = "No one has won yet!";
  }

  Null throwDice(){
    playerScore = 1;
    for (int i = 0; i < diceNumber; i++){
      playerThrow[i] = Random().nextInt(6) + 1;
      playerScore *= playerThrow[i];
    }
    opponentScore = 1;
    for (int j = 0; j < diceNumber; j++){
      opponentThrow[j] = Random().nextInt(6) + 1;
      opponentScore *= opponentThrow[j];
    }
    round += 1;
    if (playerScore > opponentScore){
      victorMessage = "YOU WON!";
    } else if (playerScore < opponentScore){
      victorMessage = "YOU LOST!";
    } else {
      victorMessage = "DRAW!";
    }
    return;
  }
}