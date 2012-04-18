#import('dart:html');

class WSClient {

  WSClient() {
  }

  void run() {
    
    WebSocket ws =  new WebSocket("ws://localhost:8787/jWebSocket/jWebSocket");
    
    write("Hello World!");
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
  }
}

void main() {
  new WSClient().run();
}
