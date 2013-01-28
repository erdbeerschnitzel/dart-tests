import 'dart:html';
import 'dart:json';


//AJAX request for an XML Document.
HttpRequest RSSRequestObject;

String rssFeedURL = "http://www.scribegriff.com/studios/index.php?rest/"
        "blog&f=getPosts&cat_url=Google/Dart&count_only=1";


main(){


  try{

    //throw "summ!";

  }on Exception catch(x){

    print("ex caught: $x");
  }

  String listAsJson = '["Dart",0.8]'; // input List of data
  List parsedList = JSON.parse(listAsJson);

  //show(parsedList[1]);


  getRssFeed();

  }

  void getRssFeed() {
    RSSRequestObject = new HttpRequest();
    RSSRequestObject.open("GET", rssFeedURL, true);
    RSSRequestObject.on.readyStateChange.add((e) {
    reqChange();
  });
  }

  void reqChange() {
    if (RSSRequestObject.readyState == 4 && RSSRequestObject.status == 200) {
      Document feedDocument = RSSRequestObject.responseXml;
      //show(RSSRequestObject.responseXML.toString());
    } else {
      //show(RSSRequestObject.statusText);
    }
}