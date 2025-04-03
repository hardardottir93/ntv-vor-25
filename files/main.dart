import "dart:convert";
import "dart:io";
import "package:crypto/crypto.dart";

void main(){
  print("1. Sign Up");
  print("2. Login");
  print("3. Exit");
  String inputMenu = stdin.readLineSync().toString();

  if(inputMenu == "1") {
   signUpUser();

  } else if(inputMenu == "2") {
    print("");
    List<userInDB> mydatabase = getDatabase();
    bool isAuthenticated = authenticationMethod(mydatabase);
    if (isAuthenticated) {
      printSecretMessage();
    } else {
      print("You are not ready for the secret.");
    }
  } else {
    print("Exit program ...");
  }
}
void printSecretMessage() {
  print("You are in.");
  print("The secret is....");
  print("Operation: Disappear");
  final SecretMessage = File("files/secret.txt");
  final readfile = SecretMessage.readAsLinesSync();
  for(var line in readfile) {
    print(" - $line");
  }
  print("Líf þitt mun aldrei verið það sama ef þú hverfur í 90 daga. Sjáumst aftur eftir 90 daga.");
}
bool authenticationMethod(List<userInDB> mydb) {
  print("Enter your username");
  String username = stdin.readLineSync().toString();
  print("Enter your password");
  String password = stdin.readLineSync().toString();

  print("* Checking if $username exists");
  bool isAuthenticated = false;
  for (var user in mydb) {
    if(user.username == username) {
      print("* $username was found");
      if(user.password == password){
        isAuthenticated = true;
      } else {
        print("* Incorrect password");
      }
    }
  }
  return isAuthenticated;
}
List<userInDB> getDatabase() {
  final _FILE = File("files/database.csv");
  final readFile = _FILE.readAsLinesSync();
  List<userInDB> users = [];
  for(String text in readFile.sublist(1)) {
    var splitLine = text.split(";");
    userInDB tempUser = userInDB(username: splitLine[0], password: splitLine[1]);
    users.add(tempUser);
  }
  return users;
}
class userInDB {
  String username;
  String password;
  userInDB({required this.username, required this.password});
}

void signUpUser(){
  print("Signup");
  print("Enter username:");
  String usernameInput = stdin.readLineSync().toString();
  print("Enter password:");
  String passwordInput = stdin.readLineSync().toString();
  final _FILE = File("files/database.csv");
  final WriteTo_FILE = _FILE.openWrite(mode: FileMode.append);
  WriteTo_FILE.write("\n$usernameInput;$passwordInput");
  WriteTo_FILE.close();
}