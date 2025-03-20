// Verkefn
//Búa til klasa sem heitir Person
//Peron er með nafn, aldur og starf
//Búum til method sem: prentar nafnið -
//Afmælið ár bætist við á aldurinn og prentar
//svo út nýja aldurinn - Segja upp. Prentar
//út uppsögn eða bara ég hætti í $job takk fyrir mig.


/*void main(){

Person person = Person(name: 'Hafrún', age: 31, job: 'an It tech');

person.greetings();
person.birthday();
person.quitJob();

}

//Manneskja
class Person {
  String name;
  int age;
  String job;

  Person({
    required this.name,
    required this.age,
    required this.job
});

  void greetings () {
    print('Hi! My name is $name :)');
  }

  void birthday(){
    age++;
    print('Yaay, It\'s my birthday - now I\'m $age!');
  }

  void quitJob() {
    print('I just quit my job as $job, now I\' unemployed :(');
    job = 'Unemployed';
  }
}
*/


//Tímaverkefni
//**** Reiknivél ****
//Promta user - Biðja um tvær tölur og lista af aðgerðum t.d. +, -, /, *
//Ráðið hvort þið biðjið um tölurnar í sitthvoru lagi eða báðar í einu.
//s.s annaðhvort tvö input eða inline - skrifa þá t.d. '1+1', 1*1' ec.

import 'dart:io';

void main() {
  print('---Calculator---');

  bool check = true;
  while (check) {
      print('You can use + - * /');
      print('Enter a input "1+1", "7/2" etc.');
      String input = stdin.readLineSync().toString();

      if(input.contains('+')){
        List inputList = input.split('+');
        double result = addNum(double.parse(inputList[0]), double.parse(inputList[1]));
        print('= $result');
      } else if(input.contains('-')){
        List inputList = input.split('-');
        double result = subtractNum(double.parse(inputList[0]), double.parse(inputList[1]));
        print('= $result');
      } else if(input.contains('*')){
        List inputList = input.split('*');
        double result = multiplyNum(double.parse(inputList[0]), double.parse(inputList[1]));
        print('= $result');
       } else if(input.contains('/')){
        List inputList = input.split('/');
        double result = divideNum(double.parse(inputList[0]), double.parse(inputList[1]));
        print('= $result');
      } else {
        print('Wrong syntax - Try again!');
      }
  }

}

double addNum(double a, double b) {
  return a+b;
}
double subtractNum(double a, double b) {
  return a-b;
}
double multiplyNum(double a, double b) {
  return a*b;
}
double divideNum(double a, double b) {
  return a/b;
}