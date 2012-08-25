#import('dart:html');
#import('dart:json');


//AJAX request for an XML Document.
XMLHttpRequest RSSRequestObject;

String rssFeedURL = "http://www.scribegriff.com/studios/index.php?rest/"
        "blog&f=getPosts&cat_url=Google/Dart&count_only=1";


main(){
  

  try{
    
    //throw "summ!";
    
  }catch(Exception x){
    
    print("ex caught: $x");
  }
  
  String listAsJson = '["Dart",0.8]'; // input List of data
  List parsedList = JSON.parse(listAsJson);
  
  //show(parsedList[1]);
  
  var parser = new DOMParser(); 
  //document = parser.parseFromString('<foo><bar></bar></foo>', 'text/xml'); 
  getRssFeed();
  
  }
  
  void getRssFeed() {
    RSSRequestObject = new XMLHttpRequest();
    RSSRequestObject.open("GET", rssFeedURL, true);
    RSSRequestObject.on.readyStateChange.add((e) {
    reqChange();
  });
  }
  
  void reqChange() {
    if (RSSRequestObject.readyState == 4 && RSSRequestObject.status == 200) {
      Document feedDocument = RSSRequestObject.responseXML;
      //show(RSSRequestObject.responseXML.toString());
    } else { 
      //show(RSSRequestObject.statusText); 
    }
}