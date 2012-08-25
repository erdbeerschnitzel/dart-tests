#library('base');
#source('interface1.dart');
#source('interface2.dart');
#source('interface1impl.dart');

class Base implements interface1, interface2 {
  

}

main(){
  
  //Base base = new Base();
  
  int i = 5;
  
  print(i);
  

  List<String> list = new List<String>();

  list.add('some string');

 // list.add(5);



  print(list is List<String>); // Ausgabe: true

  print(list is List<int>); // Ausgabe: false

  print(new List() is List<String>); // Ausgabe: true

  print(list is List); // Ausgabe: true
  //print(base.listen("ex.com", 88));
}