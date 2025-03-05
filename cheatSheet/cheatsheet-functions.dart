import 'dart:io';

void main(){
  print('The light bulb is......');
  bool myLightSwitch = false;
  /*turnOnOrOff(myLightSwitch);
  String onOrOff = '';
  if (myLightSwitch == true) {
    onOrOff = 'ON!';
  } else {
    onOrOff = 'OFF!';
  }
  print(onOrOff);   */

  while(true){
    myLightSwitch = turnOnOrOff(myLightSwitch);
    displayLightBulbStatus(myLightSwitch);
    print('Should we check again?');
    stdin.readLineSync();
  }
}

/* bool turnOnOrOff(bool lightSwitch){
  bool result;
  if(lightSwitch == true) {
    result = false;
  } else {
    result = true;
  }
  return result;
}*/

//Einfaldara
bool turnOnOrOff(bool lightSwitch) {
  return !lightSwitch;
}

void displayLightBulbStatus(bool lightSwitch) {
  /*if(lightSwitch == true){
    print('ON!');
  } else {
    print('Off');
  }*/
  print('The light is ');
  print(lightSwitch ? 'On' : 'Off');
}

String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O'
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
}