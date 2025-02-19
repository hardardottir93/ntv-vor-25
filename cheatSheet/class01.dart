import 'package:ntv_vor_25/methods.dart';
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {

  /*  0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable. */

  String name = "Gunnar";
  print("Góðan daginn $name, ertu til í að læra Dart með mér í dag?");

  /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
  */

  String author = "Albert Einstein";
  String quote = "Life is like riding a bicycle. To keep your balance, you must keep moving.";
  print("$author sagði eitt sinn '$quote'");

  /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */

  String message = "Velkomin!";
  print(message);
  message = "Bless!";
  print(message);

  /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */

  String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";
  NureseryRyhme = NureseryRyhme.replaceAll(" ", "");
  print(NureseryRyhme);

  /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */

  print("Enter first name:");
  String firstName = stdin.readLineSync(encoding: utf8).toString();
  print("Enter last name:");
  String lastName = stdin.readLineSync(encoding: utf8).toString();
  String fullName = "$firstName $lastName";

  print(fullName.toUpperCase());

  firstName = "Hafrún";

  fullName = firstName.substring(0,1).toUpperCase() + firstName.substring(1,firstName.length) + " " +
              lastName.substring(0,1).toUpperCase()+lastName.substring(1,lastName.length);
  print(fullName);


  /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */
  String SSN1 = "200689-2409";
  String SSN2 = "200689 2409";
  String SSN3 = "2 006 8924 09";


  String fixedSSN = SSN1.replaceAll("-","");
  print(fixedSSN);

  fixedSSN = SSN2.replaceAll(" ","");
  print(fixedSSN);

  fixedSSN = SSN3.replaceAll(" ","");
  print(fixedSSN);
  
  /*
  Bónus task calculate the age from the SSN.
   */

}
