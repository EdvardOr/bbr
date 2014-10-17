library api;

import 'package:angular/angular.dart';

class Api{
  String SEND_MESSAGE_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/sendpifmelding';
  String GET_REGISTERED_CODES_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentregistrertekoder/{lagId}';
  String GET_PIF_POS_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentpifposisjon/{lagId}';
  String GET_CURRENT_POST_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentgjeldendepost/{lagId}';
  
  Http _http;
  
  String getPifPos() {
    _http(method: 'GET', url: GET_PIF_POS_URL).
      then((HttpResponse res) {
        return res;
      });
    return 'temp';
  }
  
  void sendMsg(){
    _http.post(SEND_MESSAGE_URL, null);
  }
}