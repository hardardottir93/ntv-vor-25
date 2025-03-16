import 'dart:core';
import 'dart:io';
import 'dart:math';

//Dice hlutur sem inniheldur fjölda hliða og fall sem skilar random kasti
class Dice {
  int diceSides = 6;

  Dice({
    required this.diceSides
  });

  int rollDice(Dice dice) {
    return Random().nextInt(diceSides) +1;
  }
}

//Player hlutur sem inniheldur nafn og stig
class Player {
  String name;
  int score = 0;

  Player({
    required this.name
  });

  //Tekur inn lista af tengingum og leggur þá saman.
  //Skilar engu en uppfærir Score hjá Player.
  void rollDices(List<Dice> dices) {
    int roll = 0;
    stdout.write('\n$name rolled');
    for(int i = 0 ; i < dices.length ; i++) {
      roll = dices[i].rollDice(dices[i]);
      stdout.write(' $roll');
      score = score+roll;
    }
  }
}
