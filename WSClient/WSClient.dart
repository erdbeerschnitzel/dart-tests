#import('dart:html');

class WSClient {

  WSClient() {
  }

  void run() {
    
    WebSocket ws =  new WebSocket("ws://echo.websocket.org");
    
    ws.on.message.add(onMessage);
    
    ws.send("this is dart!");
    
    write("engage!");
  }

  
  void onMessage(event) {
    
    write(event.data);
  }
  
  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
  }
}

void main() {
  new WSClient().run();
}
