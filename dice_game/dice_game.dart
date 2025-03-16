import 'dart:convert';
import 'dart:io';
import 'dice_logic.dart';

void main() {
  print('Who is playing? \nPlayer 1:');
  String p1Name = stdin.readLineSync(encoding: utf8).toString();

  print('Player 2:');
  String p2Name = stdin.readLineSync(encoding: utf8).toString();

  bool check = true;
  while (check) {
    print('How many rounds do you want to play? From 1-10');
    String rounds = stdin.readLineSync().toString();
    int? roundsInt = int.tryParse(rounds);
    if(roundsInt != null && roundsInt > 0 && roundsInt <= 10) {
        Player player1 = Player(name: p1Name);
        Player player2 = Player(name: p2Name);
        Dice dice1 = Dice(diceSides: 6);
        Dice dice2 = Dice(diceSides: 6);
        Dice dice3 = Dice(diceSides: 6);
        Dice dice4 = Dice(diceSides: 6);

        List<Dice> player1Dices = [dice1, dice2];
        List<Dice> player2Dices = [dice3, dice4];

        for (int i = 0; i < roundsInt; i++) {
          print('\n====== Round ${i + 1} ======');
          player1.rollDices(player1Dices);
          player2.rollDices(player2Dices);
        }

        print('\n====== RESULTS ======');
        if (player1.score > player2.score) {
          print('The winner with ${player1.score} points is ${player1.name}');
          print('Looser is ${player2.name} with ${player2.score} points');
        } else if (player1.score < player2.score) {
          print('The winner with ${player2.score} points is ${player2.name}');
          print('Looser is ${player1.name} with ${player1.score} points');
        } else {
          print('IT\'S A TIE!');
          print('${player1.score} - ${player2.score}');
        }

        check = false;
    } else {
      print('This is not correct.. please enter a number between 1-10 :)');
    }
  }
}
