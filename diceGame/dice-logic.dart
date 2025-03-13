import 'dart:core';
import 'dart:math';

class Dice {
  int diceSides = 6;

  Dice({
    required this.diceSides
  });

  int rollDice(Dice dice) {
    return Random().nextInt(this.diceSides) +1;
  }
}

class Player {
  String name = '';
  int score = 0;

  Player({
    required this.name
  });

  //Tekur inn lista af tengingum og leggur þá saman.
  //Skilar engu en uppfærir Score hjá Player.
  void rollDices(List<Dice> dices) {
    int roll = 0;
    for(int i = 0 ; i<dices.length ; i++) {
      roll = dices[i].rollDice(dices[i]);
      this.score = this.score+roll;
    }
  }
}
