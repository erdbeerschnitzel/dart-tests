#import('dart:isolate');


void echo() { 

  port.receive((msg, reply) => reply.send("Echo: $msg")); 
  
  
  ReceivePort receiver = new ReceivePort(); 

  receiver.receive((msg, reply) {   


  
  reply.send("yo");

  });   

 }



 void main() { 
   
   bool ready1, ready2 = false;
   
   print(ready1);
   print(ready2);

   SendPort sender = spawnFunction(echo); 

   ReceivePort receiver = new ReceivePort(); 

   receiver.receive((msg, _) {   
     
     print(msg);

   if (msg == 'shutdown') { 

     print("shutting");
     receiver.close(); 

    }  

   });   

   sender.send("do something", receiver.toSendPort()); 
   
   print("send befehl");

 }