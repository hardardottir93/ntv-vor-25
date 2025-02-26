void main(){
  // Create a list
  List names = ['John', 'Hjalti', 'Gunnar'];

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
  
}