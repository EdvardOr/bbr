import 'dart:html';

ButtonElement genButton;

void main() {
  genButton = querySelector('#generateButton');
  genButton.onClick.listen(generateBadge);

}


