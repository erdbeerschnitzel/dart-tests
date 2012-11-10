library base;
part 'interface1.dart';
part 'interface2.dart';
part 'interface1impl.dart';

class Base implements interface1, interface2 {

  void listen(String host, int port){

  }
}

main(){

  int i = 5;

  print(i);


  List<String> list = new List<String>();

  list.add('some string');

 // list.add(5);



  print(list is List<String>); // Ausgabe: true

  print(list is List<int>); // Ausgabe: false

  print(new List() is List<String>); // Ausgabe: true

  print(list is List); // Ausgabe: true

}