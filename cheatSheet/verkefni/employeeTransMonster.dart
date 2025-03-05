import 'dart:math';

import 'package:ntv_vor_25/methods.dart';

void main() {
  company bonus = company(id: 1,
      name: 'Bónus',
      domainURL: 'bonus.is',
      type: 'Supermarket');

  company kronan = company(id: 2,
      name: 'Krónan',
      domainURL: 'kronan.is',
      type: 'Supermarket');

  company steypustodin = company(id: 3,
      name: 'Steypustöðin',
      domainURL: 'steypustodin.is',
      type: 'Building');

  List<company> myCompanyList = [];
  myCompanyList.add(bonus);
  myCompanyList.add(kronan);
  myCompanyList.add(steypustodin);

  List<String> employees = getNamesList();
  List<employee> employeesTransformed = [];

  for(String employeeName in employees) {
   String username = createUserName(employeeName);

   var random = Random();
   int randomCompany = random.nextInt(3);
   int randomAge = random.nextInt(60);
   int age = randomAge + 20;
   company tempCompany = myCompanyList[randomCompany];

   employee newEmployee = employee(
     name: employeeName,
     age: age,
     username: username,
     tempCompany: tempCompany);

   employeesTransformed.add(newEmployee);

   print(newEmployee.name);
   print(newEmployee.age);
   print(newEmployee.username);

  }
}

// Búa til nýjan starfsmann
class employee {
  String name;
  int age;
  String username;
  company tempCompany;

  employee({required this.name, required this.age, required this.username, required this.tempCompany});
}

//Company class
class company{
  int id;
  String name;
  String domainURL;
  String type;
  List<employee> employees = [];
  company({required this.id, required this.name, required this.domainURL,
    required this.type});
}

//Búa til usename
String createUserName(String tempName){
  List splitName = tempName.split(" ");
  String firstName = splitName[0];
  String lastName = splitName [1];
  String username = firstName + lastName.substring(0,3);
  username = username.toLowerCase();
  username = removeIcelandicLetters(username);
  return username;
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