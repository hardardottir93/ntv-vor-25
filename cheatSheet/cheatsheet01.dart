void main(List<String> arguments){

  //Full Name
  String firstName = "Hafrún";
  String lastName = "Harðardóttir";

  print("Hi $firstName $lastName");

  String fullName = firstName + " " + lastName;
  print("Hi $fullName");

  //Fix SSN
  String SSN = "030993-2929";
  int ssnLength = SSN.length;
  print(ssnLength);

  String fixSSN = SSN.replaceAll("-", "");
  ssnLength = fixSSN.length;
  print(ssnLength);

  String birthDate = SSN.substring(0,6);
  print(birthDate);

  //Change message
  String message = "Hello World";
  String fixMessage = message.replaceAll("World", "NTV");
  print(fixMessage.toUpperCase());

}