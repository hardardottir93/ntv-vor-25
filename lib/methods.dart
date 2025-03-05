List<String> getNamesList() {
  List<String> myList = <String>[];
  myList.add("Guðrún Jónsdóttir");
  myList.add("Bjarni Guðmundsson");
  myList.add("Þóra Ólafsdóttir");
  myList.add("Jón Jónsson");
  return myList;
}
List<int> getNumbersList() {
  List<int> myList = <int>[];
  myList.add(42);
  myList.add(2018);
  return myList;
}
bool turnOffOrOn(bool parameter) {
  return !parameter;
}

class Customer {
  String name;
  int age;

  Customer(this.name, this.age);

  @override
  String toString() {
    return '{ ${this.name}, ${this.age} }';
  }
}
List <Customer> getCustomers() {
  List <Customer> customers = [];
  customers.add(Customer('Jack', 23));
  customers.add(Customer('Adam', 27));
  customers.add(Customer('Katherin', 25));
  return customers;
}

