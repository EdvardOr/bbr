import 'dart:html';
import 'api.dart';


ButtonElement northButton;
ButtonElement southButton;
ButtonElement westButton;
ButtonElement eastButton;
ButtonElement startButton;
ButtonElement stopButton;
ButtonElement sendButton;
ButtonElement getPostButton;



void main() {
 
  
  northButton = querySelector('#northButton');
  northButton.onClick.listen(northBadge);
  
  southButton = querySelector('#southButton');
  southButton.onClick.listen(southBadge);
  
  westButton = querySelector('#westButton');
  westButton.onClick.listen(westBadge);
  
  eastButton = querySelector('#eastButton');
  eastButton.onClick.listen(eastBadge);
  
  startButton = querySelector('#startButton');
  startButton.onClick.listen(startBadge);
  
  stopButton = querySelector('#stopButton');
  stopButton.onClick.listen(stopBadge);
  
  sendButton = querySelector('#sendButton');
  sendButton.onClick.listen(sendBadge);
  
  getPostButton = querySelector('#getPostButton');
  getPostButton.onClick.listen(getPostBadge);

}
void getPostBadge(Event e) {
  getPost();
}

 void getPost() {
  var request = HttpRequest.getString('http://bouvet-code-camp.azurewebsites.net/api/game/base/hentregistrertekoder/2cedfbe').then(onDataLoaded);
}
  
 void onDataLoaded(String responseText) {
  var jsonString = responseText;
  InputElement input = querySelector('#outputPost');
  input.value = jsonString;
}

void sendBadge(Event e) {
  InputElement ie = querySelector('#inputNumber');
  num  number = ie.valueAsNumber;
  Api.sendDistanse(number);
}

void startBadge(Event e) {
  Api.sendStopp(false);
}

void stopBadge(Event e) {
  Api.sendStopp(true);
}

void northBadge(Event e) {
  Api.sendHimmelretning("North");
}

void southBadge(Event e) {
  Api.sendHimmelretning("South");
}

void westBadge(Event e) {
  Api.sendHimmelretning("West");
}

void eastBadge(Event e) {
  Api.sendHimmelretning("East");
}

