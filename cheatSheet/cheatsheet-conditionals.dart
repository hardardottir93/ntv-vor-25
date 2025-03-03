import 'dart:io';

void main(){
  // Grading
  print("------* Grading Program *------");
  stdout.write('Pick a number between 1-100!\n');
  String? input = stdin.readLineSync();
  int score = int.parse(input!);
try {
  if (score < 1 || score > 100) {
    print('Invalid input, please enter a number between 1-100');
  } else {
    if (score >= 90) {
      print('Grade: A');
    } else if (score >= 80) {
      print('Grade: B');
    } else if (score >= 70) {
      print('Grade: C');
    } else if (score >= 60) {
      print('Grade: D');
    } else {
      print('Grade: F');
    }
  }
} catch(e) {
    print("error");
  }

  bool isLoading = false;
  // Turnery operator
  isLoading ? print("Loading...") : print("not Loading");

  //Sama og if else :
  if(isLoading){
    print('Not loading!');
  } else {
    print('Loading ...');
  }

  int numberr = 3;
  numberr <= 5 ? print('Number is smaller than 5') : print('Number is bigger than 5');

}