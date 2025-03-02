import 'dart:io';
void main() {

  print('Velkomin á Borgarabúlluna! \n');

  List<List<dynamic>> menu =  [['Ostborgari',1500],['BBQ borgari',1700],['Vegan borgari',1600],['Beikon borgari',1800]];

  //Prenta matseðil:
  print('Hér er matseðillinn okkar:');
  for (int i = 0 ; i < menu.length ; i++) {
      print((i+1).toString() + '. ' + menu[i][0]+ ' - ' + menu[i][1].toString() + ' kr.');
  }

  String orderText = '\nVinsamlegast veldu númer á réttinu sem þú vilt bæta við pöntunina (eða skrifaðu "exit" til að hætta!)';
  print(orderText);

  List order = [];
  bool ordering = true;
  int inputInt = 0;

  while(ordering) {
    String input = stdin.readLineSync().toString();
    if (input == 'exit') {
      print('Hætta');
      ordering = false;
    } else if (input is String){

    }

    inputInt = int.tryParse(input)!;

    if (inputInt > 0 && inputInt <= menu.length ){
      order.add(menu[inputInt-1]);
      int? sum = 0;
      print('Þín pöntun:');
      for (int i = 0 ; i < order.length ; i++) {
        sum = (sum! + (order[i][1])) as int?;
        print((i+1).toString() + '. ' + order[i][0]+ ' - ' + order[i][1].toString() + ' kr.');
      }
      print('Samtals: $sum kr.');
    } else {
      print('Vinsamlegast veldu númer á matseðlinum eða skrifaðu exit til að hætta.');
    }
  }
}