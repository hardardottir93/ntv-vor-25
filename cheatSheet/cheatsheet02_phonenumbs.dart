import 'dart:io';

void main(List<String> arguments) {
  /*
  -Input: Taka á móti símanúmeri
  -Validate phone number
  -Símanúmer eru 7 stafir
  -Sumir nota "-"
  -Sumir nota " "
  -Sumir nota country code með "+354"
  -Símanúmer byrja ekki á 0,1,2,3,9
   */
  bool validNumber = false;
  while (validNumber == false) {
    print("Settu inn símanúmer:");
    String phoneNumber = stdin.readLineSync().toString();

    if (phoneNumber.contains("+354")) {
      phoneNumber = phoneNumber.replaceAll("+354", "");
      phoneNumber = phoneNumber.replaceAll(" ", "");
      print("Ok, þú býrð á Íslandi, show off..");
    }
    if (phoneNumber.length == 8) {
      phoneNumber = phoneNumber.replaceAll("-", "");
      phoneNumber = phoneNumber.replaceAll(" ", "");
      print("Auka bil og mínus skipta mig ekki máli, tek það út!");
    }

    int? numberStorage = int.tryParse(phoneNumber);
    if (phoneNumber.length == 7 && numberStorage is int) {
      print("Rétt lengd og allt tölur! Letsgo!");
      if (phoneNumber[0] != "0" && phoneNumber[0] != "1" &&
          phoneNumber[0] != "2" && phoneNumber[0] != "3" &&
          phoneNumber[0] != "9") {
        print("JÁ! Löggilt símanúmer!");
        validNumber = true;
      } else {
        print("Byrjar það ekki eitthvað asnalega? ");
      }
    }
  }

}