import 'dart:html';
import 'api.dart';
import 'dart:convert';


ButtonElement northButton;
ButtonElement southButton;
ButtonElement westButton;
ButtonElement eastButton;
ButtonElement startButton;
ButtonElement stopButton;
ButtonElement sendButton;
ButtonElement getPostButton;

final String GET_REGISTERED_CODES_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentregistrertekoder/2cedfbe';
final String GET_PIF_POS_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentpifposisjon/2cedfbe';
final String GET_CURRENT_POST_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentgjeldendepost/2cedfbe';


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
  getCodes();
  getPos();
}

 void getPost() {
  var request = HttpRequest.getString(GET_CURRENT_POST_URL).then(onDataLoadedPost);
}
 
 void getCodes() {
  var request = HttpRequest.getString(GET_REGISTERED_CODES_URL).then(onDataLoadedCodes);
}
 
 void getPos() {
  var request = HttpRequest.getString(GET_PIF_POS_URL).then(onDataLoadedPos);
}
  
 void onDataLoadedCodes(String responseText) {
  var jsonString = responseText;
  InputElement input = querySelector('#outputPost');
  querySelector('#codes').text = "Koder: " + "testing";
  input.value = jsonString;
}
 
 void onDataLoadedPost(String responseText) {
  var jsonString = responseText;
  Map data = JSON.decode(responseText);
  InputElement input = querySelector('#outputPost');
  querySelector('#post').text = "Post: " + data["postNummer"].toString()+ " Longitude: " + data["gps"]["longitude"] + " Latitude: " + data["gps"]["latitude"];
  input.value = jsonString;
}
 
 void onDataLoadedPos(String responseText) {
  var jsonString = responseText;
  Map data = JSON.decode(responseText);
  InputElement input = querySelector('#outputPost');
  querySelector('#pos').text = "PIF posisjon: " "Longitude: " + data["longitude"] + " Latitude: " + data["latitude"] + " Infisert: " + data["infisert"].toString() + " Tid: " + data["tid"].toString(); 
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

