import 'dart:html';

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
  return;
}

void startBadge(Event e) {
  return;
}

void stopBadge(Event e) {
  return;
}


void northBadge(Event e) {
  return;
}

void southBadge(Event e) {
  return;
}

void westBadge(Event e) {
  return;
}

void eastBadge(Event e) {
  return;
}
