
void main() {
  
  
  for(int a = 0; a < 10; a++){
   
    Date d = new Date.now();
    
    for(int i = 0; i < 100000; i++){
      
      ggt(31232004,i);
      
    }
    
    print("${new Date.now().difference(d)}:");
    
  } 
}


int ggt(int zahl1, int zahl2) {
  
  while (zahl2 != 0) {
    
    if (zahl1 > zahl2) {
      zahl1 = zahl1 - zahl2;
    } else {
      zahl2 = zahl2 - zahl1;
    }
  }
  return zahl1;
}