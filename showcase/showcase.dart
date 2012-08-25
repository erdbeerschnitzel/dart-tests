
void main() {

  Date d = new Date.now();
  
  var s = new SampleObject();
  
  //s.muh();
  
  //DateFormat df = new DateFormat("dd.mm.yyyy", "de-de");
  
  //show(df.format(d));
  
  try {
    new Foo().bar();
  }
  catch (var ex, var stackTrace) {           //note the var stack
    print("catched: $stackTrace");                       //simply print it out.
  }
}




class SampleObject {
  noSuchMethod(String functionName, List args) {
    print("handling: $functionName with args: $args");
  }
}

class Foo {
  bar() {
    throw "an exception";
  }
}