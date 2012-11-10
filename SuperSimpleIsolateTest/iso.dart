import 'dart:isolate';

echo() {

 port.receive((msg, reply) => reply.send("Echo: ${calculate(msg)}"));
}

int calculate(int a){

  for(int i = 0; i < 100; i++){

    a = a + 1;

    for(int b = 0; b < 1000; b++){

      a = a - 1;

      for(int c = 0; c < 1000; c++){

        a = a + 1;
      }
    }
  }

  return a;
}

void main() {

 SendPort sendPort = spawnFunction(echo);
 sendPort.call(5).then((response) => print(response));
 //sendPort.call("w").then((response) => print(response));
 print("fresse da unten");
}