import 'package:dicegame/src/AuthorButton.dart';
import 'package:flutter/material.dart';
import 'CoreGameComponents.dart';
import 'RulesButton.dart';
import 'Author.dart';

class DiceGame extends StatefulWidget {
  @override
  DiceGameState createState() => DiceGameState();
}

class DiceGameState extends State<DiceGame>{
  CoreGameComponents gameComponents = CoreGameComponents();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: ListView(
            children: [
              Spacer(),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    "Round ${gameComponents.round}",
                    style: TextStyle(
                      fontSize: 48.0,
                      fontFamily: "KingdomComeTitle",
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          "Player",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "KingdomComeTitle",
                          ),
                        ),
                      ),
                      for (int i = 0; i < gameComponents.diceNumber; i++)
                        Image.asset(
                          "assets/images/Dices/Dice${gameComponents.playerThrow[i]}.png",
                          width: 4 * 65 / gameComponents.diceNumber,
                          height: 4 * 65 / gameComponents.diceNumber,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            "${gameComponents.playerScore}",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontFamily: "KingdomComeTitle",
                            ),
                          ),
                        ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          "Computer",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontFamily: "KingdomComeTitle",
                          ),
                        ),
                      ),
                      for (int i = 0; i < gameComponents.diceNumber; i++)
                        Image.asset(
                          "assets/images/Dices/Dice${gameComponents.opponentThrow[i]}.png",
                          width: 4 * 65 / gameComponents.diceNumber,
                          height: 4 * 65 / gameComponents.diceNumber,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                              "${gameComponents.opponentScore}",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontFamily: "KingdomComeTitle",
                              ),
                            ),
                        ),
                    ],
                  ),
                  Spacer(),
                ]
              ),
              Container(
                width: 200,
                height: 30,
                child:Slider(
                  value: gameComponents.diceNumber.toDouble(),
                  min: 3.0,
                  max: 5.0,
                  divisions: 2,
                  onChanged: (double value){
                    setState(() {
                      gameComponents.diceNumber = value.toInt();
                      gameComponents.playerThrow = List<int>.filled(gameComponents.diceNumber, 1);
                      gameComponents.opponentThrow = List<int>.filled(gameComponents.diceNumber, 1);
                    });
                  },
                ), 
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(26.0),
                  child: Text(
                    "${gameComponents.victorMessage}",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontFamily: "KingdomComeTitle",
                    ),
                    ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gameComponents.throwDice();
                        });
                      },
                      child: Text('Roll Dice'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Warning'),
                              content: Text('Do you want to restart the game?'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('No'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      gameComponents.reset();
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Yes'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text('Reset'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RulesButton(),
                  AuthorButton(),
                ],
              ),
              Spacer(),
            ]
          )
        )
      )
    );
  }
}
