#import('dart:io');

abstract class A { 
    double x = 2.0; 
    abstract void aMethod(); 
} 
class B extends A { 
     void aMethod() { x = x + 1.1; } 
} 
 class C extends A { 
    void aMethod() { x = x - 1.1; } 
} 
 class D extends A { 
     void aMethod() { x = x + 2.2; } 
} 
 
   
void test(A bar) { 
       
  Date d = new Date.now();
  
  for (int i = 0; i < 50000000; i++) bar.aMethod(); 
        
  print("${d.difference(new Date.now())}");
} 
     
void main() { 

  A b = new B(); 
  A c = new C(); 
  A d = new D(); 
  test(b); // warmup 
  test(b); 
  test(b);
  test(c);
  test(d); 
    
} 
