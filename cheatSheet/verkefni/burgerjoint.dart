import 'dart:io';
void main() {

  print('Velkomin á Borgarabúlluna! \n');

  List<List<dynamic>> menu =  [['Ostborgari',1500],['BBQ borgari',1700],['Vegan borgari',1600],['Beikon borgari',1800]];

  //Prenta matseðil:
  print('Hér er matseðillinn okkar:');
  for (int i = 0 ; i < menu.length ; i++) {
      print('${'${i+1}. ${menu[i][0]}'} - ${menu[i][1]} kr.');
  }
  String addOrRemove = '\n Skrifaðu "add" ef þú vilt bæta við pöntun og "remove" ef þú vilt eyða úr pöntun.';
  String orderText = '\n Vinsamlegast skrifaðu "add" ef þú vilt bæta við rétti eða "remove" ef þú vilt eyða út rétt!)';
  print(orderText);

  List order = [];
  bool ordering = true;

  //Á meðan pöntun er í gangi:
  while(ordering) {
    String? input = stdin.readLineSync();
    int? inputInt = int.tryParse(input!);
    int? sum = 0;

      if (input == 'exit') {
        print('Þakka þér fyrir að panta! Hér er pöntunin þín:');
        for (int i = 0; i < order.length; i++) {
          sum = (sum! + (order[i][1])) as int?;
          print('${'${i + 1}. ${order[i][0]}'} - ${order[i][1]} kr.');
        }
        print('Samtals: $sum kr.');
        ordering = false;
      }
      else if (inputInt == null) {
        print(orderText);
      }
      else if (inputInt > 0 && inputInt <= menu.length) {
        print(
            menu[inputInt - 1][0] + ' hefur verið bætt við pöntunina þína.\n');
        order.add(menu[inputInt - 1]);

        print('Þín pöntun:');
        for (int i = 0; i < order.length; i++) {
          sum = (sum! + (order[i][1])) as int?;
          print('${'${i + 1}. ${order[i][0]}'} - ${order[i][1]} kr.');
        }

        print('Samtals: $sum kr.');
      } else {
        print(orderText);
      }
    }
}