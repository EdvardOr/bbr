import 'dart:html';
import 'api.dart';

ButtonElement northButton;
ButtonElement southButton;
ButtonElement westButton;
ButtonElement eastButton;
ButtonElement startButton;
ButtonElement stopButton;
ButtonElement sendButton;


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

}

void sendBadge(Event e) {
  InputElement ie = querySelector('#inputNumber');
  Api.sendDistanse(ie.valueAsNumber);
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

