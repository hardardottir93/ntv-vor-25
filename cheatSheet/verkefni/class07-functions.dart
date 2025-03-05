import 'dart:io';
import 'dart:math';

void main() {
  print('');
  int input = stdin.readLineSync() as int;

}

//Fallið tekur inn hæð og lengd ferhyrnings og skilar flatarmáli í int.
int rectangleArea(int length, int height) {
  int area = length+height;
  return area;
}

//Fallið tekur inn radíus hringsins og skilar flatarmáli í double.
//Flatarmál hrings er reiknað með pí*radíus í öðru veldi.
double circleArea(int radius) {
  double area = pi * pow(radius,2);
      return area;
}
//Fallið tekur inn grunnlínu og hæð þríhyrnings og skilar flatarmáli í double.
//Notað er: (grunnlína * hæð) /2 þegar reiknað er út flatarmál þríhyrnings.
double triangleArea(int length, int height) {
  double area = (length*height)/2;
  return area;
}

//Fallið tekur inn streng, telur bilin í strengnum og skilar fjöldanum.
int countSpaces(String sentence) {
  List<String> sentenceList = sentence.split(' ');
  return sentenceList.length;
}
