import 'dart:io';
import 'dart:math';

void main(List<String> arguments){
  int randomNum = Random().nextInt(100);
  print('Giskaðu á tölu á milli 1-100');
  String number = stdin.readLineSync().toString();
  int? numberInt = int.tryParse(number);
  int count = 0;
  bool status = true;

  if(numberInt is int && numberInt <= 100) {
    int guess = numberInt;
    while (status) {
      if (randomNum < guess) {
        print('Talan er lægri!');
        number = stdin.readLineSync().toString();
        guess = int.parse(number);
      } else if (randomNum > guess) {
        print('Talan er hærri!');
        number = stdin.readLineSync().toString();
        guess = int.parse(number);
      } else if (randomNum == guess) {
        print('RÉTT!');
        status = false;
      }
      count++;
    }
    print('Þú giskaðir $count sinnum.');
  } else {
    print('Hey, ég bað um tölu á milli 1-100');
  }
}
