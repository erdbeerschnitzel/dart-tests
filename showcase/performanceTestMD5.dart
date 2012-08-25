#import('dart:crypto');

void main() {

  Date d = new Date.now();      

  for(int i = 0; i < 100000; i++){   

      var x = new MD5().update('This is Dart!$i'.charCodes()).digest();    

     //print("${new Date.now()}: ${CryptoUtils.bytesToHex(x)}");  

  }     

  print("${new Date.now().difference(d)}:");

}