void main() {
  // Create list
  List numbers = [1, 2, 4, 7];
  print(numbers);

  // Change an element
  numbers[2] = 8;
  print(numbers);

  // Add to a to a list
  numbers.add(96);
  print(numbers);

  // Add many to a list
  numbers.addAll([3,6,8,9]);
  print(numbers);

  // Create an empty list
  List nothing = [];
  print(nothing);

  // Insert at a specific index
  numbers.insert(2, 2);
  print(numbers);

  // Remove from a list
  numbers.remove(2);
  print(numbers);

  // Remove at an index
  numbers.removeAt(6);
  print(numbers);

  // Bonus - Find an element's position and remove at that index
  int num = 2;
  int i = 0;
  while (i < numbers.length-1) {
    if(numbers[i] == num){
      numbers.removeAt(i);
    }
    print(numbers[i]);
    i++;
  }
  print(numbers);
}
