library api;

import 'package:angular/angular.dart';

class Api{
  static final String SEND_MESSAGE_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/sendpifmelding';
  static final String GET_REGISTERED_CODES_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentregistrertekoder/{lagId}';
  static final String GET_PIF_POS_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentpifposisjon/{lagId}';
  static final String GET_CURRENT_POST_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentgjeldendepost/{lagId}';
  
  //Http _http;
  
  String getPifPos() {
    Http _http;
    _http(method: 'GET', url: GET_PIF_POS_URL).
      then((HttpResponse res) {
        return res;
      });
    return 'temp';
  }
  
  static void sendHimmelretning(String retning){
    Http _http;
    _http.post(SEND_MESSAGE_URL, null);
  }

  static void sendDistanse(int dist){
    Http _http;
    _http.post(SEND_MESSAGE_URL, null);
  }

  static void sendStopp(bool stopp){
    Http _http;
    _http.post(SEND_MESSAGE_URL, null);
  }
}