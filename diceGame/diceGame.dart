import 'dart:io';

import 'dice-logic.dart';

void main() {
  print('Who is playing? Player 1:');
  String p1Name = stdin.readLineSync().toString();

  print('Who is playing? Player 2:');
  String p2Name = stdin.readLineSync().toString();

  print('How many rounds do you want to play? From 1-10');
  String? rounds = stdin.readLineSync();
  int? roundsInt = int.tryParse(rounds!);
  bool check = true;
  while (check) {
    if (!(roundsInt! < 0 && roundsInt >= 10)) {
      Player player1 = Player(name: p1Name);
      Player player2 = Player(name: p2Name);
      Dice dice1 = Dice(diceSides: 6);
      Dice dice2 = Dice(diceSides: 6);
      Dice dice3 = Dice(diceSides: 6);
      Dice dice4 = Dice(diceSides: 6);

      List<Dice> player1Dices = [dice1, dice2];
      List<Dice> player2Dices = [dice3, dice4];

      for (int i = 0; i < roundsInt; i++) {
        player1.rollDices(player1Dices);
        print('Score1');
        print(player1.score);
        player2.rollDices(player2Dices);
        print('Score2');
        print(player2.score);
      }

      print(player2.name);
      print(player2.score);

      check = false;
    } else {
      print('This is not correct.. please enter a number between 1-10 :)');
    }
  }
}
