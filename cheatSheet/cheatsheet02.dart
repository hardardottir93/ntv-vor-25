import 'dart:io';

void main(List<String> arguments){
  /*int personAge = 21;
  int driverLicenseAge = 17;
  bool doesPersonHaveDriversLicense = false;
  print(personAge);

  if(personAge >= driverLicenseAge && doesPersonHaveDriversLicense == true){
    print("Þú mátt keyra!");
  } else if(personAge >= driverLicenseAge && doesPersonHaveDriversLicense == false) {
    print("Þú mátt hringja í ökukennara og byrja að læra að keyra");
  } else {
    print("Takt þú strætó!");
  }

  if(!(5>7)){
    print("This is true!")
  }*/
  bool authenticated = false;
  while(!authenticated){

    String myPassword = "MasterOfTheWorld123";
    String username = "admin";

    print("Enter username:");
    String loginUser = stdin.readLineSync().toString();
    print("Enter your password:");
    String loginPassword = stdin.readLineSync().toString();

    if (loginUser.toLowerCase() == username && loginPassword == myPassword){
      print("You are in. Welcome to the jungle!");
      authenticated = true;
    } else {
      print("Wrong username or password.");
      print("Please try again!");
    }
  }

}