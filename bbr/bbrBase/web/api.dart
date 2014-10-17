library api;

import 'dart:convert';
import 'package:angular/angular.dart';
import 'dart:html';

class Api{
  static final String SEND_MESSAGE_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/sendpifmelding';
  static final String GET_REGISTERED_CODES_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentregistrertekoder/{lagId}';
  static final String GET_PIF_POS_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentpifposisjon/{lagId}';
  static final String GET_CURRENT_POST_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentgjeldendepost/{lagId}';
  static final String LAG_ID = "2cedfbe";
  
  //Http _http;
  
  String getPifPos() {
    Http _http;
    _http(method: 'GET', url: GET_PIF_POS_URL).
      then((HttpResponse res) {
        return res;
      });
    return 'temp';
  }
  
  static String getPost() {
    return 'temp';
  }
  
  static void sendHimmelretning(String retning){
    Http _http;
    Map data = {
                "Type" : "Himmelretning",
                "Innhold" : retning,
                "LagId" : LAG_ID
            };
    HttpRequest.postFormData(SEND_MESSAGE_URL, data);
  }

  static void sendDistanse(num dist){
    Http _http;
     Map data = {
                 "Type" : "Lengde",
                 "Innhold" : dist.toInt().toString(),
                 "LagId" : LAG_ID
             };
     HttpRequest.postFormData(SEND_MESSAGE_URL, data);
  }

  static void sendStopp(bool stopp){
    Http _http;
    Map data = {
                "Type" : "Stopp",
                "Innhold" : stopp.toString(),
                "LagId" : LAG_ID
            };
    HttpRequest.postFormData(SEND_MESSAGE_URL, data);
  }

}