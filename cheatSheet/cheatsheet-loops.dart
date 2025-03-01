// ** LOOPS **
  void main(){
/*
  // For loop
    for(int i = 1 ; i <= 10 ; i++){
      print(i);
    }

    for(int j = 10 ; j >= 0 ; j--){
      print(j);
    }


  // For in
    List animals = ['Lion','Pig','Cow','Cat'];

    for(String animal in animals){
      print(animal);
    }


  // While
    int num = 5;
    while(num < 0){
      num--;
      print(num);
    }

  // do while
    do {
      print(num);
      num--;
    }
    while(num > 0);
*/

    List numbs = [1,2,3,4,5,6,7,8,32,234,4323];
    List numbs2 = [1,2,3,5,6,89,5,4,3,4323];
    List commonNumbs = [];

  //Take a list and write a program that prints out all the elements of
  //the list that are less than 5.
    for(int num in numbs) {
      if(num < 5) {
        print(num);
      }
    }

    //Take two lists and write a program that returns a list that contains
    //only the elements that are common between them.

    for(int i in numbs) {
      for(int j in numbs2){
        if(i == j) {
          commonNumbs.add(i);
        }
      }
    }
    print(commonNumbs);

    // Make a program that asks the user for a number and
    // then prints out a list of all the divisors of that number.

    // Take two lists and write a program that returns a list that
    // contains only the elements that are common between them (without duplicates)


}