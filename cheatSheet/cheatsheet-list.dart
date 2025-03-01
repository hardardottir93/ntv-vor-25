void main(){
  // Create a list
  /*List names = ['John', 'Hjalti', 'Gunnar'];

  // Change item in list
  names[1] = 'Jón';
  print(names);

  // Add item in a list
  names.add('Einar');
  print(names);

  // Add multiple
  names.addAll(['Inga', 'Kristrún', 'Þorgerður']);
  print(names);

  // Insert at a specific location
  names.insert(0, 'Bjarni');
  print(names);

  // Insert many
  names.insertAll(2, [1,2,20]);
  print(names);

  // Remove - allir Bjarnar
  names.remove('Bjarni');

  // Remove at - bara einn Bjarni á x stað
  names.removeAt(0);
  print(names);
  */


  List nums = [5,4,3,3,1,9,8,7,6];
  List chars = ['a','b','c','h','t','d'];

  // Sort the list
  print(chars);
  nums.sort();
  print(nums);

  // Remove between 2 indexes
  nums.removeRange(2, 6);
  print(nums);

  // Remove last
  nums.removeLast();
  print(nums);

}