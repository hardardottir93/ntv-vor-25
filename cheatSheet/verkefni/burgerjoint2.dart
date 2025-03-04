import 'dart:io';
void main() {
  print('Velkomin á Borgarabúlluna! \n');

  List<List<dynamic>> menu = [
    ['Ostborgari', 1500],
    ['BBQ borgari', 1700],
    ['Vegan borgari', 1600],
    ['Beikon borgari', 1800]
  ];

  //Prenta matseðil:
  print('Hér er matseðillinn okkar:');
  for (int i = 0; i < menu.length; i++) {
    print('${'${i + 1}. ${menu[i][0]}'} - ${menu[i][1]} kr.');
  }

  String errorMsg = 'Veldu "add", "remove" eða "exit"';
  String orderText = '\nVinsamlegast skrifaðu "add", "remove" eða "exit" \n '
      'eftir því hvort þú viljir bæta við pöntun, eyða úr pöntun eða hætta í pöntun.';
  List order = [];
  bool ordering = true;

  print(orderText);
  while (ordering) {
    String inputString = stdin.readLineSync().toString();
    int? sum = 0;

    if (inputString == 'add') {
      print('Veldu nú númer af matseðli til að bæta við pöntun:');
      String? orderAdd = stdin.readLineSync();
      int? inputInt = int.tryParse(orderAdd!);

      if (inputInt! > 0 && inputInt <= menu.length) {
        print(menu[inputInt - 1][0] + ' hefur verið bætt við pöntunina þína.');
        order.add(menu[inputInt - 1]);

        print('Þín pöntun:');
        for (int i = 0; i < order.length; i++) {
          sum = (sum! + (order[i][1])) as int?;
          print('${'${i + 1}. ${order[i][0]}'} - ${order[i][1]} kr.');
        }

        print('Samtals: $sum kr.');
        print(errorMsg);
      }
      else {
        print(errorMsg);
      }
    }
    else if (inputString == 'remove') {
      print('Veldu nú númer í pöntun til að eyða:');
      String? orderAdd = stdin.readLineSync();
      int? inputInt = int.tryParse(orderAdd!);

      if (inputInt! > 0 && inputInt <= order.length) {
        print(
            order[inputInt - 1][0] + ' hefur verið eytt úr pöntuninni þinni.');
        order.remove(order[inputInt - 1]);

        print('Þín pöntun:');
        for (int i = 0; i < order.length; i++) {
          sum = (sum! + (order[i][1])) as int?;
          print('${'${i + 1}. ${order[i][0]}'} - ${order[i][1]} kr.');
        }
        print('Samtals: $sum kr.');
        print(errorMsg);
      }
      else if (order.isEmpty){
        print('Það er ekkert í pöntuninni þinni til að eyða...');
        print(errorMsg);
      }
      else {
        print('Þetta er ekki rétt.. reyndu aftur..');
        print(errorMsg);
      }
    }

    else if (inputString == 'exit') {
      print('Þakka þér fyrir að panta! Hér er pöntunin þín:');
      for (int i = 0; i < order.length; i++) {
        sum = (sum! + (order[i][1])) as int?;
        print('${'${i + 1}. ${order[i][0]}'} - ${order[i][1]} kr.');
      }
      print('Samtals: $sum kr.');
      ordering = false;
    }
    else {
      print('Þetta er ekki rétt valið...');
      print(errorMsg);
    }
  }
}
