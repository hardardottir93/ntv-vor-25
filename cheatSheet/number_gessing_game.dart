import 'dart:io';
import 'dart:math';

void main(List<String> arguments){
  int randomNum = Random().nextInt(100) +1;
  int count = 0;
  bool status = true;
  print('Giskaðu á tölu á milli 1-100');

  while (status) {
    String number = stdin.readLineSync().toString();
    int? guess = int.tryParse(number);
    if (guess is int && guess <= 100) {
      if (randomNum < guess) {
        print('Talan er lægri!');
      } else if (randomNum > guess) {
        print('Talan er hærri!');
      } else if (randomNum == guess) {
        print('RÉTT!');
        status = false;
      }
      count++;
    } else {
      print('Ég bað um tölu á milli 1-100 \nReyndu aftur!');
    }
  }
  print('Þú giskaðir $count sinnum.');
}
